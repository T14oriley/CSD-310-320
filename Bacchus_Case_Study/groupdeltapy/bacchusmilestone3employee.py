#Rachel White
#Group Delta - Bacchus Case Study
# 5/9/2023

import mysql.connector
from tabulate import tabulate

dbconn = mysql.connector.connect(
   host = "sql9.freemysqlhosting.net",
   user = "sql9615557",
   password = "",
   database ="sql9615557"
)

print("EMPLOYEES")
myconn = dbconn.cursor()
query = """
SELECT e.first_name, e.last_name, d.dep_name,w.work_description,t.hours_worked
FROM employee e, department d, working_hours w,trackinghours t
WHERE e.department_id=d.department_id
and e.working_hours_id=w.working_hours_id
and e.employee_id=t.employee_id
"""
myconn.execute (query)


result = myconn.fetchall()
print(tabulate(result, headers=['First Name','Last Name','Department','Work Description','Hours Worked'],tablefmt='mysql'))

print(myconn.rowcount, "rows returned")


