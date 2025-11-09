import sqlite3
conn = sqlite3.connect('University.db')
cursor = conn.cursor()

cursor.execute('''insert into dept values(10, "CSE")''')
cursor.execute('''insert into dept
               values
               (20, "ECE"),
               (30, "Civil"),
               (40, "Mech")
               ''')
conn.commit()
cursor.close()
conn.close()