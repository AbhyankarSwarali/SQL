import sqlite3
conn = sqlite3.connect('University.db')
cursor = conn.cursor()

for _ in range(15):
    rlno = int(input("Enter roll no.: "))
    name = input("Enter name: ")
    city = input("Enter city: ")
    deptno = int(input("Enter dept no.: "))
    print(' ')
    
    cursor.execute('insert into students values(?,?,?,?)',
                   (rlno, name, city, deptno) )

conn.commit()
cursor.close()
conn.close()