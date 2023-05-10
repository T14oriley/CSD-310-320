#CSD310 Tyler O'Riley 04/22/2023 Assignment 8_2
#Python queries to select and display MySQL table data

import mysql.connector

config = {
    "user": "b_admin",
    "password": "casestudy123",
    "host": "127.0.0.1",
    "database": "bacchus_db",
}

db = mysql.connector.connect(**config)

cursor = db.cursor()

print("ANALYSIS REPORT FOR MONTHLY SUPPLIES ORDERS \n\n")
print("REPORT DETAILS EXPECTED AND ACTUAL DELIVERY TIMES ACROSS 6 MONTH PERIOD \n\n")

#BOTTLES AND CORKS COMPANY ANALYSIS
bottles_corks =("""
    SELECT expected_delivery_time, actual_delivery_date
    FROM order_delivery
    """)

cursor.execute(bottles_corks)
orderInfo = cursor.fetchall()

x = 0
print("BOTTLES AND CORKS COMPANY\n")

for row in orderInfo:
  x = x + 1
  print("Month ",x,": EXPECTED -",row[0] ,", ACTUAL -", row[1])

#LABELS AND BOXES ANALYSIS
labels_boxes =("""
    SELECT expected_delivery_time, actual_delivery_date
    FROM order_delivery
    """)

cursor.execute(labels_boxes)
orderInfo = cursor.fetchall()

x = 0
print("\nLABELS AND BOXES COMPANY\n")

for row in orderInfo:
  x = x + 1
  print("Month ",x,": EXPECTED -",row[0] ,", ACTUAL -", row[1])

#VATS AND TUBING ANALYSIS
vats_tubing =("""
    SELECT expected_delivery_time, actual_delivery_date
    FROM order_delivery
    """)

cursor.execute(vats_tubing)
orderInfo = cursor.fetchall()

x = 0
print("\nVATS AND TUBING COMPANY\n")

for row in orderInfo:
  x = x + 1
  print("Month ",x,": EXPECTED -",row[0] ,", ACTUAL -", row[1])

