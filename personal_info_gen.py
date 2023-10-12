import random
import string
import names

# Define possible first and last names
first_names = ["Adam", "Mohammed", "Oliver", "Noah", "Sophia", "Liam", "Ava", "Isabella", "Mia", "Evelyn", "Abigail", "Emily", "Harper", "Elizabeth", "Sofia", "Avery", "Ella", "Scarlett", "Grace", "Lily", "Aria", "Chloe", "Isabelle", "Anna", "Victoria", "Natalie", "Zoe", "Leah", "Hazel", "Violet", "Aurora", "Savannah", "Audrey", "Brooklyn", "Bella", "Claire", "Skylar", "Lucy", "Paisley", "Everly", "Addison", "Ruby", "Layla", "Emma", "Olivia", "Aiden", "Lucas", "Caleb", "Mason", "Logan", "Benjamin", "James", "Henry", "Alexander", "Sebastian", "Jack", "Elijah", "Daniel", "Matthew", "Joseph", "David", "Carter", "Owen", "Wyatt", "John", "Oscar", "Eli", "Luke", "Anthony", "Isaac", "Dylan", "Lincoln", "Jaxon", "Asher", "Christopher", "Josiah", "Andrew", "Thomas", "Joshua", "Ezra", "Hudson", "Charles", "Cameron", "Evan", "Maverick", "Bryson", "Jillian", "Carson", "Theodore", "Christian", "Austin", "Eli", "Jonathan", "Nolan", "Aaron", "Cameron", "Colton", "Adrian", "Alex", "Edward", "Nicholas", "Charlie", "Kai", "Jaxon", "Kaiden", "Gabriel"]

# Generated middle names
middle_names = ["James", "John", "Robert", "Michael", "William", "David", "Richard", "Charles", "Joseph", "Thomas", "Patricia", "Linda", "Barbara", "Elizabeth", "Jennifer", "Maria", "Susan", "Margaret", "Dorothy", "Lisa", "Nancy", "Karen", "Betty", "Helen", "Sandra", "Donna", "Carol", "Ruth", "Sharon", "Michelle", "Laura", "Sarah", "Kimberly", "Deborah", "Jessica", "Shirley", "Cynthia", "Angela", "Melissa", "Brenda", "Amy", "Anna", "Rebecca", "Virginia", "Kathleen", "Pamela", "Martha", "Debra", "Amanda", "Stephanie", "Carolyn", "Christine", "Marie", "Janet", "Catherine", "Frances", "Ann", "Joyce", "Diane", "Alice", "Julie", "Heather", "Teresa", "Doris", "Gloria", "Evelyn", "Jean", "Cheryl", "Mildred", "Katherine", "Joan", "Ashley", "Judith", "Rose", "Janice", "Kelly", "Nicole", "Judy", "Christina", "Kathy", "Theresa", "Beverly", "Denise", "Tammy", "Irene", "Jane", "Lori", "Rachel", "Marilyn", "Andrea", "Kathryn", "Louise", "Sara", "Anne", "Jacqueline", "Wanda", "Bonnie", "Julia", "Ruby", "Lois", "Tina", "Phyllis", "Norma", "Paula", "Diana", "Annie", "Lillian", "Emily", "Robin"]

# Generated last names
last_names = ["Smith", "Johnson", "Williams", "Brown", "Taylor", "Miller", "Wilson", "Moore", "Anderson", "Thomas", "Jackson", "White", "Harris", "Martin", "Thompson", "Garcia", "Martinez", "Robinson", "Clark", "Rodriguez", "Lewis", "Lee", "Walker", "Hall", "Allen", "Young", "Hernandez", "King", "Wright", "Lopez", "Hill", "Scott", "Green", "Adams", "Baker", "Gonzalez", "Nelson", "Carter", "Mitchell", "Perez", "Roberts", "Turner", "Phillips", "Campbell", "Parker", "Evans", "Edwards", "Collins", "Stewart", "Sanchez", "Morris", "Rogers", "Reed", "Cook", "Morgan", "Bell", "Murphy", "Bailey", "Rivera", "Cooper", "Richardson", "Cox", "Howard", "Ward", "Torres", "Peterson", "Gray", "Ramirez", "James", "Watson", "Brooks", "Kelly", "Sanders", "Price", "Bennett", "Wood", "Barnes", "Ross", "Henderson", "Coleman", "Jenkins", "Perry", "Powell", "Long", "Patterson", "Hughes", "Flores", "Washington", "Butler", "Simmons", "Foster", "Gonzales", "Bryant", "Alexander", "Russell", "Griffin", "Diaz", "Hayes"]

# Define email domains
email_domains = ["terpmail.umd.edu", "umd.edu"]

# Define phone area codes from Maryland, 70% chance of selecting one of these (else generate random)
area_codes = ["202", "301", "410", "443", "667"]

email_formats = ["{first}_{last}", "{first}{last[0]}", "{first[0]}{last}", ""]
# List of various email formats
email_formats_without_year = [
    "{first}_{last}",
    "{first}{last[0]}",
    "{first[0]}{last}",
    "{last}_{first}",
    "{first}{last}",
    "{first}.{last}",
    "{first}_{last[0]}"
]

email_formats_with_year = [
    "{first}_{last}_{year}",
    "{first}{last[0]}_{year}",
    "{first[0]}{last}_{year}",
    "{last}_{first}_{year}",
    "{first}{last}_{year}",
    "{first}.{last}.{year}",
    "{first}{last[0]}{year}",
    "{last}.{first}.{year}",
    "{last}{first}_{year}",
]
possible_years = [str(i) for i in range(1990, 2005)]

num_users = 130

# Generate a random password
def generate_password(length): # generate without comma or newline
    characters = string.ascii_letters + string.digits + string.punctuation
    characters = characters.replace(",", "")
    password = ''.join(random.choice(characters) for i in range(length))
    return password

# Open a CSV file in write mode
with open("fake_users.csv", "w") as file:
    # Write header
    file.write("UserName,Email,Phone,Password\n")
    
    # Generate num_users user data entries
    for i in range(num_users):
        first_name = random.choice(first_names)
        last_name = random.choice(last_names)
        email_domain = random.choice(email_domains)
        # with probability 70% use area code from Maryland, else generate random area code
        if random.random() < 0.7:
            area_code = random.choice(area_codes)
        else:
            area_code = random.randint(100, 999)
        
        # Construct user data
        # with probability 80% use email format without year, else use email format with year
        if random.random() < 0.8:
            email_format = random.choice(email_formats_without_year)
            username = email_format.format(first=first_name.lower(), last=last_name.lower())
        else:
            email_format = random.choice(email_formats_with_year)
            username = email_format.format(first=first_name.lower(), last=last_name.lower(), year=random.choice(possible_years))
        email = f"{username}@{email_domain}"
        
        # with equal 1/3 probability, format like (xxx) xxx-xxxx, xxx-xxx-xxxx, or xxxxxxxxxx
        if random.random() < 1/3:
            phone = f"({area_code}) {random.randint(100, 999)}-{random.randint(1000, 9999)}"
        elif random.random() < 2/3:
            phone = f"{random.randint(100, 999)}-{random.randint(100, 999)}-{random.randint(1000, 9999)}"
        else:
            phone = f"({area_code}) {random.randint(100, 999)}-{random.randint(1000, 9999)}"
        password = generate_password(10)
        
        # Write user data to file
        file.write(f"{username},{email},{phone},{password}\n")
