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


print("DISTRIBUTORS")
myconn = dbconn.cursor()
query = """SELECT c.first_name, c.last_name, co.order_id,op.product_description,
oi.qty,od.carrier,od.tracking_number
FROM customer c, c_order co, order_items oi,
order_product op, order_delivery od
WHERE c.customer_id=co.customer_id
and co.order_id=oi.order_id
and oi.order_product_id=op.order_product_id
and oi.order_delivery_id=od.order_delivery_id
"""
myconn.execute (query)


result = myconn.fetchall()
print(tabulate(result, headers=['First Name','Last Name','Order ID','Product','Quantity','Carrier','Tracking Number'],tablefmt='mysql'))

print(myconn.rowcount, "rows returned")

