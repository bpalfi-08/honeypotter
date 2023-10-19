# Fake database of user logins and passwords

import csv
from faker import Faker
import bcrypt
import random
import pandas as pd

def generate_fake_db(num_entries, hash_passwords=False, get_emails_from_file=None, save_folder="files"):
    """
    num_entries: number of entries to generate
    hash_passwords: if True, hash passwords with bcrypt
    get_emails_from_file: if not None, get emails from file instead of generating them
    """
    fake = Faker()
    fieldnames = ['Username', 'Email', 'Password']

    if get_emails_from_file is not None:
        user_db = pd.read_csv(get_emails_from_file)

    with open(f'{save_folder}/fake_logins.csv', mode='w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames)
        writer.writeheader()
        
        for _ in range(num_entries):
            username = fake.user_name()
            if get_emails_from_file is None:
                email = fake.email()
            else:
                # choose random email from user_db
                email = random.choice(user_db['Email'])
            password = fake.password()
            
            if hash_passwords:
                salt = bcrypt.gensalt()
                hashed_password = bcrypt.hashpw(password.encode(), salt).decode()
                writer.writerow({'Username': username, 'Email': email, 'Password': hashed_password})
            else:
                writer.writerow({'Username': username, 'Email': email, 'Password': password})

# Usage: 
# To generate a fake database with plain text passwords
generate_fake_db(100, get_emails_from_file="files/user_logins.csv")

# To generate a fake database with hashed and salted passwords
# generate_fake_db(100, hash_passwords=True)
