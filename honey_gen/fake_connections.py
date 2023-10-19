import csv
from faker import Faker
from datetime import datetime, timedelta
import random
import pandas as pd

def generate_fake_logins(num_attempts, existing_username_data=None, save_folder="files", time_delta=300):
    fake = Faker()
    fieldnames = ['Timestamp', 'IP_Address', 'Username', 'Password', 'Status']
    
    if existing_username_data is not None:
        user_db = pd.read_csv(existing_username_data)

    with open(f'{save_folder}/login_attempts.csv', mode='w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames)
        writer.writeheader()
        
        timestamp = datetime.now()
        
        for _ in range(num_attempts):
            ip_address = fake.ipv4()
            if existing_username_data is not None:
                # choose a random username and password from the existing username data (same row)
                random_row = user_db.sample().iloc[0]
                username = random_row['Username']
                password = random_row['Password']
            else:
                username = fake.user_name()
                password = fake.password()
            status = random.choice(['SUCCESS', 'FAILURE'])
            # Decreasing timestamp for each attempt to simulate a sequence of attempts over time
            timestamp -= timedelta(seconds=random.randint(1, time_delta))  
            writer.writerow({
                'Timestamp': timestamp.strftime('%Y-%m-%d %H:%M:%S'),
                'IP_Address': ip_address,
                'Username': username,
                'Password': password,
                'Status': status
            })

# Usage:
generate_fake_logins(100)
