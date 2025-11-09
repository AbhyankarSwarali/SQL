import sqlite3
conn = sqlite3.connect('University.db')
cursor = conn.cursor()

cities = cursor.execute('select distinct city from students')
soln = cities.fetchall()
for s in soln:
    print(s[0])

cursor.close()
conn.close()