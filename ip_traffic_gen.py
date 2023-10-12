import random
import time

# List of fictitious IP addresses
ip_addresses = [
    "203.0.113." + str(random.randint(1, 254)),
    "198.51.100." + str(random.randint(1, 254)),
    "192.0.2." + str(random.randint(1, 254)),
    "203.0.113." + str(random.randint(1, 254)),
    "198.51.100." + str(random.randint(1, 254)),
    # You can add more IPs or generate dynamically as per your need...
]

# List of URLs (replace with actual paths relevant to your application)
urls = [
    "/home",
    "/login",
    "/profile",
    "/settings",
    "/data",
    # ... more URLs...
]

# HTTP methods
http_methods = [
    ("GET", 0.6),    # 60% chance
    ("POST", 0.25),  # 25% chance
    ("PUT", 0.1),    # 10% chance
    ("DELETE", 0.05) # 5% chance
]

# HTTP statuses
http_statuses = [
    "200 OK",
    "201 Created",
    "204 No Content",
    "400 Bad Request",
    "401 Unauthorized",
    "403 Forbidden",
    "404 Not Found",
    "500 Internal Server Error",
]

# Generate fake traffic logs
def generate_fake_traffic(num_logs):
    for _ in range(num_logs):
        ip = random.choice(ip_addresses)
        url = random.choice(urls)
        method = random.choices(http_methods, weights=[weight for _, weight in http_methods], k=1)[0][0]
        status = random.choice(http_statuses)
        timestamp = time.strftime("%Y-%m-%d %H:%M:%S")
        
        # Example log format: [TIMESTAMP] IP_ADDRESS METHOD URL STATUS
        log_entry = f"[{timestamp}] {ip} {method} {url} {status}"
        
        print(log_entry)
        # If you want to add a delay between each log entry
        time.sleep(random.uniform(0.5, 3))  # Sleep between 0.1 and 1.5 seconds

# Example: generate 20 fake traffic logs
generate_fake_traffic(20)
