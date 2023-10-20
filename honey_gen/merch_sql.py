import sqlite3
import pandas as pd
import faker

def insert_new_order(cursor: sqlite3.Cursor, first_name, last_name, email, phone_number, shipping_address):
    cursor.execute("INSERT INTO Orders (FirstName, LastName, Email, PhoneNumber, ShippingAddress) VALUES (?, ?, ?, ?, ?)", (first_name, last_name, email, phone_number, shipping_address))

def fetch_all_orders(cursor: sqlite3.Cursor):
    cursor.execute("SELECT * FROM Orders")
    # orders = c.fetchall()
    return cursor.fetchall() # fetch all rows from the cursor


# Connect to database (or create it if it doesn't exist)
conn = sqlite3.connect('files/merchandise_orders.db')

# Create a cursor object to execute SQL commands
c = conn.cursor()

# Create table if it doesn't exist, else overwrite it
if c.execute("SELECT count(*) FROM sqlite_master WHERE type='table' AND name='Orders'").fetchone()[0] != 0:
    c.execute("DROP TABLE Orders")
c.execute('''
        CREATE TABLE Orders (
            OrderID INTEGER PRIMARY KEY AUTOINCREMENT,
            FirstName TEXT,
            LastName TEXT,
            Email TEXT,
            PhoneNumber TEXT,
            ShippingAddress TEXT
        )
        ''')

# insert fake rows of data
num_orders = 243
user_info = pd.read_csv("files/personal_user_data.csv")
fake = faker.Faker()
for i in range(num_orders):
    # randomly select a user row
    user_row = user_info.sample(1)
    # insert new order
    
    # make address using user info State and Zipcode columns, randomly generate other address info with faker
    address = f"{fake.street_address()}, {user_row["State"].values[0]}, {user_row["Zipcode"].values[0]}"

    insert_new_order(c, user_row["FirstName"].values[0], user_row["LastName"].values[0], user_row["Email"].values[0], user_row["Phone"].values[0], address)

# print all orders
orders = fetch_all_orders(c)
for order in orders:
    print(order)

# Commit and close
conn.commit()
conn.close()
