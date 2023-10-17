from faker import Faker
import random

def generate_log(entries):
    fake = Faker()
    methods = ["GET", "POST", "PUT", "DELETE"]
    resources = ["/index.html", "/contact.html", "/about.html", "/form_submit", "/images/logo.png"]
    status_codes = [200, 301, 302, 400, 404, 500]
    
    with open("fake_ip_log.txt", "w") as file:
        for _ in range(entries):
            ip = fake.ipv4()
            timestamp = fake.date_time_this_year().strftime("[%d/%b/%Y:%H:%M:%S +0000]")
            method = random.choice(methods)
            resource = random.choice(resources)
            http_version = "HTTP/1.1"
            status_code = random.choice(status_codes)
            log_entry = f"{ip} - - {timestamp} \"{method} {resource} {http_version}\" {status_code}\n"
            file.write(log_entry)

# Call the function with the number of entries you want to generate
generate_log(100)
