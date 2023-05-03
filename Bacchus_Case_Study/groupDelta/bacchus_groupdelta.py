#Rachel White
#Group Delta - Bacchus Case Study
# 5/2/2023

import mysql.connector

dbconn = mysql.connector.connect(
   host = "sql9.freemysqlhosting.net",
   user = "sql9615557",
   password = "",
   database ="sql9615557"
)
print("--DISPLAYING employee RECORDS--")
myconn = dbconn.cursor()
myconn.execute ("SELECT * from employee ")

result = myconn.fetchall()
for x in result:
	print(x)
print(myconn.rowcount, "rows returned")

print("--DISPLAYING billing_address RECORDS--")
myconn2 = dbconn.cursor()
myconn2.execute ("SELECT * from billing_address ")

result = myconn2.fetchall()
for x in result:
	print(x)
print(myconn2.rowcount,"rows returned")

print("--DISPLAYING countries RECORDS--")
myconn3 = dbconn.cursor()
myconn3.execute ("SELECT * from countries ")

result = myconn3.fetchall()
for x in result:
	print(x)
print(myconn3.rowcount,"rows returned")

print("--DISPLAYING customer RECORDS --")
myconn4 = dbconn.cursor()
myconn4.execute ("Select * From customer")

result = myconn4.fetchall()
for x in result:
	print(x)
print(myconn4.rowcount,"rows returned")

print("--DISPLAYING c_order RECORDS --")
myconn5 = dbconn.cursor()
myconn5.execute ("Select * From c_order")

result = myconn5.fetchall()
for x in result:
	print(x)
print(myconn5.rowcount,"rows returned")

print("--DISPLAYING department RECORDS --")
myconn6 = dbconn.cursor()
myconn6.execute ("Select * From department")

result = myconn6.fetchall()
for x in result:
	print(x)
print(myconn6.rowcount,"rows returned")

print("--DISPLAYING employee RECORDS --")
myconn7 = dbconn.cursor()
myconn7.execute ("Select * From department")

result = myconn6.fetchall()
for x in result:
	print(x)
print(myconn7.rowcount,"rows returned")

print("--DISPLAYING invoice RECORDS --")
myconn8 = dbconn.cursor()
myconn8.execute ("Select * From invoice")

result = myconn8.fetchall()
for x in result:
	print(x)
print(myconn8.rowcount,"rows returned")

print("--DISPLAYING order_delivery RECORDS --")
myconn9 = dbconn.cursor()
myconn9.execute ("Select * From order_delivery")

result = myconn9.fetchall()
for x in result:
	print(x)
print(myconn9.rowcount,"rows returned")

print("--DISPLAYING order_items RECORDS --")
myconn10 = dbconn.cursor()
myconn10.execute ("Select * From order_items")

result = myconn10.fetchall()
for x in result:
	print(x)
print(myconn10.rowcount,"rows returned")

print("--DISPLAYING order_product RECORDS --")
myconn11 = dbconn.cursor()
myconn11.execute ("Select * From order_product")

result = myconn11.fetchall()
for x in result:
	print(x)
print(myconn11.rowcount,"rows returned")

print("--DISPLAYING order_product_inventory RECORDS --")
myconn12 = dbconn.cursor()
myconn12.execute ("Select * From order_product_inventory")

result = myconn12.fetchall()
for x in result:
	print(x)
print(myconn12.rowcount,"rows returned")

print("--DISPLAYING shipping_address RECORDS --")
myconn13 = dbconn.cursor()
myconn13.execute ("Select * From shipping_address")

result = myconn13.fetchall()
for x in result:
	print(x)
print(myconn13.rowcount,"rows returned")

print("--DISPLAYING state RECORDS --")
myconn14 = dbconn.cursor()
myconn14.execute ("Select * From state")

result = myconn14.fetchall()
for x in result:
	print(x)
print(myconn14.rowcount,"rows returned")

print("--DISPLAYING supplier RECORDS --")
myconn15 = dbconn.cursor()
myconn15.execute ("Select * From supplier")

result = myconn15.fetchall()
for x in result:
	print(x)
print(myconn15.rowcount,"rows returned")

print("--DISPLAYING supplier_inventory RECORDS --")
myconn16 = dbconn.cursor()
myconn16.execute ("Select * From supplier_inventory")

result = myconn16.fetchall()
for x in result:
	print(x)
print(myconn16.rowcount,"rows returned")

print("--DISPLAYING supplies_info RECORDS --")
myconn17 = dbconn.cursor()
myconn17.execute ("Select * From supplies_info")

result = myconn17.fetchall()
for x in result:
	print(x)
print(myconn17.rowcount,"rows returned")

print("--DISPLAYING working_hours RECORDS --")
myconn19 = dbconn.cursor()
myconn19.execute ("Select * From working_hours")

result = myconn19.fetchall()
for x in result:
	print(x)
print(myconn19.rowcount,"rows returned")
