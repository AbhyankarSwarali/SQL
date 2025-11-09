import sqlite3
conn = sqlite3.connect('University.db')
cursor = conn.cursor()

strength = cursor.execute('''select deptno, COUNT(*) 
                          from students 
                          group by deptno
                          having count(*) > (select count(*) 
                          from students where deptno = 20)
                          ''')

soln = strength.fetchall()

for s in soln:
    print(s)

cursor.close()
conn.close()