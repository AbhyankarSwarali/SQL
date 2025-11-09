import sqlite3
conn = sqlite3.connect('University.db')
cursor = conn.cursor()

ece = cursor.execute('select city, count(*) from students where deptno = 20 group by city')

soln = ece.fetchall()

for s in soln:
    print(s[0], s[1])


cursor.close()
conn.close()