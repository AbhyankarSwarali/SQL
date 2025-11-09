import sqlite3
conn = sqlite3.connect('University.db')
cursor = conn.cursor()

rows = cursor.execute('select * from dept')

# one = rows.fetchone()
# many = rows.fetchmany(3)
all = rows.fetchall()

# print(one)
# print(many)
# print(all)

for r in all:
    print(r[0], r[1])

cursor.close()
conn.close()