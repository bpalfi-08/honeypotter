from pathlib import Path
from collections import Counter, defaultdict, namedtuple
from datetime import datetime, timedelta

creds = []

ALL_DATA = []
ID = 0

configs = [
	None,
	("Control", "User Data"),
	("Apache", "User Data"),
	("nginx", "User Data"),
	("Apache", "Connection Data"),
	("nginx", "Connection Data"),
	("Control", "Connection Data"),
]

record = namedtuple('record', 'id, server_ip, ws, dtype, ip, session, interactive, time'.split(", "))

for i in range(1,7):
	root = Path(f'mitm_logs/webserver{i}/')
	for fn in root.rglob("*.log"):
		ip = str(fn).split("-")[-1].removesuffix(".log")
		with open(fn) as f:
			ID += 1
			compromised = False
			closed = False
			saved_ip = None
			start = None
			end = None
			interactive = False
			session = []
			for line in f:
				line = line.strip()
				if " - " in line: date = datetime.fromisoformat(line.split(" - ")[0])
				s = "sysctl -w net.ipv4.conf.all.route_localnet=1"
				if s in line:
					if compromised:
						if not closed:
							end = date
							closed = True
						time = 0
						if closed and interactive:
							time = (end - start)/timedelta(milliseconds=1)
						ALL_DATA.append(record._make((ID, ip, *configs[i], saved_ip, session, int(interactive), time)))
					ID += 1
					compromised = False
					closed = False
					saved_ip = None
					start = None
					end = None
					interactive = False
					session = []
				s = "[Auto Access] Compromising the honeypot"
				if s in line:
					compromised = True
					start = date
				if "[Debug] [Auto Access] Adding the following credentials: '" in line: creds.append(line.split("'")[1].split(":"))
				s = "[Debug] [EXEC] Noninteractive mode attacker command: "
				if s in line:
					session.append(line.split(s)[1])
				s = "[Debug] [SHELL] line from reader: "
				if s in line:
					session.append(line.split(s)[1])
					interactive = True
				s = "[Debug] [Auto Access] Attacker: "
				if s in line and "Attempts: 2" in line:
					saved_ip = line.split(s)[1].split(",")[0]
				s = "Attacker closed the connection"
				s2 = "[Debug] [LXC] Container's OpenSSH server closed connection"
				if compromised and (s in line or s2 in line):
					closed = True
					if end is None: end = date
			if compromised:
				if not closed:
					end = date
					closed = True
				time = 0
				if closed and interactive:
					time = (end - start)/timedelta(milliseconds=1)
				ALL_DATA.append(record._make((ID, ip, *configs[i], saved_ip, session, int(interactive), time)))

#labels, cts = zip(*((shellcmds + commands).most_common()[0:]))
#labels, cts = zip(*ips.most_common())
'''
keep = 7
cts_other = cts[:keep] + (sum(cts[keep:]),)
labels_other = labels[:keep] + ("Other",)
plt.title("Commands run")
plt.pie(cts, labels=labels[:keep] + ("",)*(len(labels)-keep))
plt.pie(cts_other, labels=labels_other, autopct='%1.1f%%')

plt.show()
'''

d = defaultdict(Counter)
seen_ids = set()
for record in ALL_DATA:
	if record.id in seen_ids: continue
	if record.interactive:
		d[record.server_ip][record.ip] += 1
	seen_ids.add(record.id)

for i in d:
	print(i, d[i].total(), d[i].most_common(4))

#sessions = {tuple(sorted(set(record.session))) for record in ALL_DATA if not record.interactive and record.session}

data = [[record.time for record in ALL_DATA if record.interactive and record.ws == i and record.dtype == j] for i,j in configs[1:]]
data_ws = [[record.time for record in ALL_DATA if record.interactive and record.ws == i] for i in ["Control", "Apache", "nginx"]]
data_dtype = [[record.time for record in ALL_DATA if record.interactive and record.dtype == i] for i in ["User Data", "Connection Data"]]

from scipy.stats import f_oneway, kruskal
result = f_oneway(*data_ws)
print(result)
result = kruskal(*data_ws)
print(result)

labels = ["Control", "Apache", "nginx"]

from matplotlib import pyplot as plt
import matplotlib.ticker as mtick

plt.title("Connection times for interactive mode")
plt.xlabel("Connection time (ms)")
plt.ylabel("Number of data points")
plt.hist(data_ws, bins=20, label=labels)
plt.legend(prop={'size': 10})
plt.show()

plt.title("Connection times for interactive mode")
plt.ylabel("Connection time (ms)")
plt.boxplot(data_ws, labels=labels)
plt.show()

