import sqlite3
conn = sqlite3.connect(r'C:\Users\HP\OneDrive\Desktop\Python\SQL_using_Python\Bank\Bank.db')
cursor = conn.cursor()

cursor.execute(''' create table customers (
               cust_id integer primary key,
               name text,
               address text,
               email text)
               ''')

cursor.execute(''' create table accounts (
               acc_id integer primary key,
               cust_id integer,
               acc_type text,
               balance real,
               foreign key (cust_id) references customers(cust_id))
               ''')

cursor.execute(''' create table transactions (
               trans_id integer primary key,
               acc_id integer,
               trans_type text,
               amount real,
               date DATE,
               foreign key (acc_id) references accounts(acc_id))
               ''')

conn.commit()
cursor.close()
conn.close()