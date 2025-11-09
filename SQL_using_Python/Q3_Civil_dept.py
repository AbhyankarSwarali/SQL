import sqlite3
conn = sqlite3.connect('University.db')
cursor = conn.cursor()

civil = cursor.execute('''select * from students where deptno = 30
                       except
                       select * from students where city = "MUM"''')

soln = civil.fetchall()

for s in soln: 
    print(s)

cursor.close()
conn.close()