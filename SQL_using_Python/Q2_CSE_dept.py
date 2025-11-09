import sqlite3
conn = sqlite3.connect('University.db')
cursor = conn.cursor()

dept = cursor.execute('select name from students S, dept D where S.deptno = D.deptno and D.dname="CSE"')

soln = dept.fetchall()

for s in soln:
    print(s[0])

cursor.close()
conn.close()