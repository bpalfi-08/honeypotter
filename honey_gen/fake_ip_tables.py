import random
from faker import Faker
from ipaddress import IPv4Address

def generate_fake_rules(num_rules, server_ip, save_folder="files"):
    fake = Faker()
    with open(f'{save_folder}/iptables_rules.txt', 'w') as file:
        for _ in range(num_rules):
            src_ip = IPv4Address(fake.ipv4())
            dst_ip = IPv4Address(fake.ipv4())
            src_port = random.randint(1, 65535)
            dst_port = random.randint(1, 65535)
            protocol = random.choice(['TCP', 'UDP', 'ICMP'])
            action = random.choice(['ACCEPT', 'DROP', 'REJECT'])
            direction = random.choice(['IN', 'OUT'])
            
            if direction == 'IN':
                rule = f"{src_ip} {src_port} -> {server_ip} {dst_port} {protocol} {action}\n"
            else:
                rule = f"{server_ip} {src_port} -> {dst_ip} {dst_port} {protocol} {action}\n"
                
            file.write(rule)

# Usage:
ip_addr = "128.8.238.72"
generate_fake_rules(100, ip_addr, save_folder="files")
