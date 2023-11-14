from pathlib import Path
from collections import Counter, defaultdict
from datetime import datetime, timedelta
from matplotlib import pyplot as plt

creds = []
shellips = []
ips = Counter()
commands = Counter()
shellcmds = Counter()

counts = Counter()
ips_seen = defaultdict(Counter)
data = []
for i in range(1,7):
	root = Path(f'mitm_logs/webserver{i}/')
	dat = []
	for fn in root.rglob("*.log"):
		ip = str(fn).split("-")[-1].removesuffix(".log")
		with open(fn) as f:
			compromised = False
			closed = False
			saved_ip = None
			start = None
			end = None
			interactive = False
			for line in f:
				line = line.strip()
				if " - " in line: date = datetime.fromisoformat(line.split(" - ")[0])
				s = "sysctl -w net.ipv4.conf.all.route_localnet=1"
				if s in line:
					compromised = False
					closed = False
					saved_ip = None
					start = None
					end = None
				s = "[Auto Access] Compromising the honeypot"
				if s in line:
					compromised = True
					start = date
				if "[Debug] [Auto Access] Adding the following credentials: '" in line: creds.append(line.split("'")[1].split(":"))
				s = "[Debug] [EXEC] Noninteractive mode attacker command: "
				if s in line: commands[line.split(s)[1]] += 1
				s = "[Debug] [SHELL] line from reader: "
				if s in line:
					shellcmds[line.split(s)[1]] += 1
					interactive = True
				s = "[Debug] [Auto Access] Attacker: "
				if s in line and "Attempts: 2" in line:
					ips[line.split(s)[1].split(",")[0]] += 1
					saved_ip = line.split(s)[1].split(",")[0]
				s = "Attacker closed the connection"
				if compromised and s in line:
					closed = True
					if end is None: end = date
				s = "[Debug] [LXC] Container's OpenSSH server closed connection"
				if compromised and s in line:
					closed = True
					if end is None: end = date
			if compromised:
				if interactive: counts[saved_ip] += 1
				ips_seen[ip][saved_ip] += 1
				if not closed:
					end = date
					closed = True
				if closed and interactive:
					shellips.append(saved_ip)
					dat.append((end - start)/timedelta(milliseconds=1))
					if end < start: print(fn)
				#if not closed: print(fn)
			#else: print(fn)
	data.append(dat)

print(f"{ips.most_common(30)=}")
print(f"{commands.most_common(30)=}")
print(f"{shellcmds.most_common(30)=}")
print(f"{Counter(map(tuple,creds)).most_common(30)=}")


for k,c in counts.most_common(): print(k, c)

data[3],data[4],data[5] = data[5],data[3],data[4]
#plt.title("Connection times for interactive mode")
#plt.ylabel("Connection time (ms)")
#plt.boxplot(data, labels=["Control,\nUser Data", "Apache,\nUser Data", "nginx,\nUser Data", "Control,\nConnection Data", "Apache,\nConnection Data", "nginx,\nConnection Data"])
#plt.boxplot([data[0]+data[3],data[1]+data[4],data[2]+data[5]], labels=["Control", "Apache", "nginx"])
#plt.boxplot([data[0]+data[1]+data[2],data[3]+data[4]+data[5]], labels=["User Data", "Connection Data"])

#labels, cts = zip(*((shellcmds).most_common()[0:]))
#labels, cts = zip(*ips.most_common())

#keep = 19
#cts_other = cts[:keep] + (sum(cts[keep:]),)
#labels_other = labels[:keep] + ("Other",)
#plt.pie(cts, labels=labels[:keep] + ("",)*(len(labels)-keep))
#plt.pie(cts_other, labels=labels_other, autopct='%1.1f%%')

#plt.show()
from scipy.stats import f_oneway
result = f_oneway(*data)
print(result)