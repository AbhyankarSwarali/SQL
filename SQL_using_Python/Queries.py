import sqlite3

# Query 1: List details of all customers
def cust_details():
    conn = sqlite3.connect(r'C:\Users\HP\OneDrive\Desktop\Python\SQL_using_Python\Bank\Bank.db')
    cursor = conn.cursor()

    detail = cursor.execute('''select * from customers''')
    for d in detail:
        print(d)
    
    conn.close()


# Query 2: Find all custoemrs and their account details
def cust_accounts():
    conn = sqlite3.connect(r'C:\Users\HP\OneDrive\Desktop\Python\SQL_using_Python\Bank\Bank.db')
    cursor = conn.cursor()

    account = cursor.execute('''select accounts.acc_id, customers.name, 
                             accounts.acc_type, accounts.balance
                             from accounts join customers
                             on accounts.cust_id = customers.cust_id''')
    for a in account:
        print(a)

    conn.close()


# Query 3: List all trnasactions
def cust_transactions():
    conn = sqlite3.connect(r'C:\Users\HP\OneDrive\Desktop\Python\SQL_using_Python\Bank\Bank.db')
    cursor = conn.cursor()

    transaction = cursor.execute('''select * from transactions''')
    for t in transaction:
        print(t)

    conn.close()


if __name__ == "__main__":
    print('\n\nCustomers')
    cust_details()
    print('\n\nAccounts')
    cust_accounts()
    print('\n\nTransactions')
    cust_transactions()