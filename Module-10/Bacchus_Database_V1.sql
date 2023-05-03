/*
    Title: Bacchus_Database.sql
    Author: Group Delta
    Date: 04/29/2023
    Description: Database for Bacchus Winery business model
*/

 -- drop and create database for use --
DROP DATABASE If Exists BACCHUS_DB;
CREATE DATABASE BACCHUS_DB;
USE BACCHUS_DB;

 -- drop customer table to recreate --
DROP TABLE IF EXISTS customer;

-- create  customer table 
CREATE TABLE customer (
	customer_id     INT             NOT NULL        AUTO_INCREMENT,
	first_name  	VARCHAR(75)     NOT NULL,
	last_name		VARCHAR(75)     NOT NULL,
	phone			INT             NOT NULL,
	email			VARCHAR(75)     NOT NULL,
	address1		VARCHAR(75)     NOT NULL,
	address2		VARCHAR(75)     NOT NULL,
	city			VARCHAR(75)     NOT NULL,
	state			VARCHAR(75)     NOT NULL,
	zip_code		INT             NOT NULL,
	country			VARCHAR(75)     NOT NULL,
	user_name		VARCHAR(75)     NOT NULL,
	pass_word		VARCHAR(75)     NOT NULL,
	order_status	BOOLEAN   		NOT NULL,
	created_date	TIMESTAMP       NOT NULL,
	modified_date	TIMESTAMP		NOT NULL,

	 
	PRIMARY KEY(customer_id)
); 

 -- insert into customer table --
INSERT INTO customer (first_name, last_name, phone, email, address1, city, state, zip_code, country,	user_name, order_status)
VALUES ('Sammy', 'Way', '2625555555', 'sway@myemail.com', '3743 North Way', 'Madison', 'WI', '53558', 'USA', 'sway', 'active');

INSERT INTO customer (first_name, last_name, phone, email, address1, city, state, zip_code, country,	user_name, order_status)
VALUES ('Joe', 'Smith', '2395555343', 'joe.smith@email.com', '4739 South Way', 'Pampano Beach', 'FL', '33060', 'USA', 'jsmith', 'active');

INSERT INTO customer (first_name, last_name, phone, email, address1, city, state, zip_code, country,	user_name, order_status)
VALUES ('Richard', 'Petterson', '9715555774', 'rpetterson@myemail.com', '1 East Capital', 'Portland', 'OR', '97035', 'USA', 'rpetterson', 'inactive');

INSERT INTO customer (first_name, last_name, phone, email, address1, city, state, zip_code, country,	user_name, order_status)
VALUES ('Shelby', 'Shellnath', '2125554455', 'ssnath@email.com', '4546 South Woods ', 'Madison', 'WI', '53558', 'USA', 'sway', 'active');

INSERT INTO customer (first_name, last_name, phone, email, address1, city, state, zip_code, country,	user_name, order_status)
VALUES ('Kate', 'Izon', '2095554312', 'kzon@email.com', '4343 West Way', 'Lancaster', 'CA', '93534', 'USA', 'kizon', 'active');

INSERT INTO customer (first_name, last_name, phone, email, address1, city, state, zip_code, country,	user_name, order_status)
VALUES ('Chris', 'Smith', '2105553223', 'chris.smith@email.com', '3485 Eastward', 'Houston', 'TX', '77001', 'USA', 'crsmith', 'active');
  
  
 -- drop supplies_info table to recreate --
DROP TABLE IF EXISTS supplies_info;

 	-- create the supplies table 
CREATE TABLE supplies_info (
	supplies_id		INT				NOT NULL		AUTO_INCREMENT,
	sup_name		VARCHAR(75)		NOT NULL,
	supplies_description VARCHAR(75)	NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,


	PRIMARY KEY(supplies_id)
);

 -- insert into supplies_info tables --
INSERT INTO supplies_info (sup_name,supplies_description)
VALUES ('bottles ', 'wine bottles');

INSERT INTO supplies_info (sup_name,supplies_description)
VALUES ('corks ', 'wine corks');

INSERT INTO supplies_info (sup_name,supplies_description)
VALUES ('labels ', 'labels');

INSERT INTO supplies_info (sup_name,supplies_description)
VALUES ('boxes ', 'boxes');

INSERT INTO supplies_info (sup_name,supplies_description)
VALUES ('vats ', 'wine vats');

INSERT INTO supplies_info (sup_name,supplies_description)
VALUES ('tubing ', 'wine tubing');

 -- drop supplies_inventory table to recreate --
DROP TABLE IF EXISTS supplies_inventory;

    -- create the supplier inventory detail table ---issue with foreign key , create table without
CREATE TABLE supplier_inventory (
	supplier_inventory_id		INT 				NOT NULL		AUTO_INCREMENT,
	supplies_id		INT					NOT NULL,
	initial_qty		DECIMAL(15,2)		NOT NULL,
	current_qty		DECIMAL(15,2)		NOT NULL,
	current_price	DECIMAL(15,2)		NOT NULL,
	sale_price		DECIMAL(15,2)		NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,


	PRIMARY KEY(supplier_inventory_id),
	FOREIGN KEY (supplies_id) REFERENCES supplies(supplies_id)
);

-- insert into supplier_inventory --

INSERT INTO supplier_inventory (supplies_id,initial_qty,current_qty,current_price)
VALUES (1, 100,50,125.99);

INSERT INTO supplier_inventory (supplies_id,initial_qty,current_qty,current_price)
VALUES (2, 100,50,65.88);

INSERT INTO supplier_inventory (supplies_id,initial_qty,current_qty,current_price)
VALUES (3, 100,30,80);

INSERT INTO supplier_inventory (supplies_id,initial_qty,current_qty,current_price)
VALUES (4, 100,10,90);

INSERT INTO supplier_inventory (supplies_id,initial_qty,current_qty,current_price)
VALUES (5, 100,20,240);

INSERT INTO supplier_inventory (supplies_id,initial_qty,current_qty,current_price)
VALUES (5, 100,20,178.86);

 -- drop supplier table to recreate --
DROP TABLE IF EXISTS supplier;

-- create the supplier table -- issue with foreign key , created table withou
CREATE TABLE supplier (
	supplier_id		INT				NOT NULL		AUTO_INCREMENT,
	comp_name		VARCHAR(75)		NOT NULL,
	comp_address	VARCHAR(75)		NOT NULL,
	comp_email		VARCHAR(75)		NOT NULL,
	supplies_id		INT				NOT NULL,
	created_date	TIMESTAMP		NOT NULL,
	modified_date	TIMESTAMP		NOT NULL,


	PRIMARY KEY(supplier_id),
	FOREIGN KEY (supplies_id) REFERENCES supplies(supplies_id) 
);

-- insert into supplier --need help with adding supplies_id
INSERT INTO supplier(comp_name,comp_address,city,state,comp_email)
VALUES ('Bottles & Corks','123 Glenway','Madison','Wisconsin','bottlesandcorks@email.com');

INSERT INTO supplier(comp_name,comp_address,city,state,comp_email)
VALUES ('Labels & Boxes','2345 Key Rd','Portland','Oregon','labelsandboxes@email.com');

INSERT INTO supplier(comp_name,comp_address,city,state,comp_email)
VALUES ('Vats & Tubing', '678 N Petterson Ave','Los Angeles','California','vatsandtubing@email.com');

 -- drop invoice table to recreate --
DROP TABLE IF EXISTS invoice;

    -- create the invoice table -- issue with foreign key
CREATE TABLE invoice (
	invoice_id				INT 		NOT NULL		AUTO_INCREMENT,
    supplier_id       INT 		NOT NULL,
    qty  DECIMAL(15,2) NOT NULL,
	supplies_id				INT			NOT NULL,		
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

	PRIMARY KEY(invoice_id),
	FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);

 -- insert into invoice --
INSERT INTO invoice(supplier_id,qty,supplies_id)
VALUES (1,50,1);

INSERT INTO invoice(supplier_id,qty,supplies_id)
VALUES (1,50,2);

INSERT INTO invoice(supplier_id,qty,supplies_id)
VALUES (2,70,3);

INSERT INTO invoice(supplier_id,qty,supplies_id)
VALUES (2,90,4);

INSERT INTO invoice(supplier_id,qty,supplies_id)
VALUES (3,80,5);

INSERT INTO invoice(supplier_id,qty,supplies_id)
VALUES (3,80,6);


 -- drop department table to recreate --
DROP TABLE IF EXISTS department;

 -- create department table --
CREATE TABLE department (
	department_id			INT 		NOT NULL		AUTO_INCREMENT,
	dep_name			VARCHAR(75)		NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

	PRIMARY KEY(department_id));

 -- insert into department --
INSERT INTO department(dep_name)
VALUES ('marketing'); 

INSERT INTO department(dep_name)
VALUES ('finances & payroll'); 

INSERT INTO department(dep_name)
VALUES ('production line'); 

INSERT INTO department(dep_name)
VALUES ('distribution'); 

INSERT INTO department(dep_name)
VALUES ('owners'); 


 -- recreating employee table --
DROP TABLE IF EXISTS employee;

 -- create employee table --
CREATE TABLE employee (
	employee_id			INT 		NOT NULL		AUTO_INCREMENT,
	first_name		VARCHAR(75)		NOT NULL,
	last_name		VARCHAR(75)		NOT NULL,
	hire_date			DATE		NOT NULL,
    department_id  	INT 		NOT NULL,
    working_hours_id INT NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

	PRIMARY KEY(employee_id)
);

 -- insert into employee table and add date in format YYYY-MM-DD ex '1990-12-12' --
INSERT INTO employee(first_name,last_name,hire_date,department_id,working_hours_id)
VALUES ('Janet','Collins','2015-01-01',2,2); 

INSERT INTO employee(first_name,last_name,hire_date,department_id,working_hours_id)
VALUES ('Maria','Costanza','2015-01-01',4,2); 

INSERT INTO employee(first_name,last_name,hire_date,department_id,working_hours_id)
VALUES ('Roz','Murphy','2016-01-01',1,2); 

INSERT INTO employee(first_name,last_name,hire_date,department_id,working_hours_id)
VALUES ('Bob','Ulrich','2018-01-01',1,2);

INSERT INTO employee(first_name,last_name,hire_date,department_id,working_hours_id)
VALUES ('Henry','Doyle','2019-01-01',3,2);

INSERT INTO employee(first_name,last_name,hire_date,department_id,working_hours_id)
VALUES ('Stan','Bacchus','2020-01-01',5,2); 

INSERT INTO employee(first_name,last_name,hire_date,department_id,working_hours_id)
VALUES ('Davis','Bacchus','2020-01-01',5,2); 


 -- drop countries table to recreate --
DROP TABLE IF EXISTS countries;

-- create countries table --
CREATE TABLE countries (
	country_id		INT 			NOT NULL		AUTO_INCREMENT,
	country		VARCHAR(75)		NOT NULL,	
    abbreviation VARCHAR(75)		NOT NULL,
	created_date	TIMESTAMP 			NOT NULL,
	modified_date	TIMESTAMP 			NOT NULL,


	PRIMARY KEY(country_id)
);

INSERT INTO countries(country,abbreviation)
VALUES ('Australia','AUS'); 

INSERT INTO countries(country,abbreviation)
VALUES ('Canada','CAN'); 

INSERT INTO countries(country,abbreviation)
VALUES ('France','FRA'); 

INSERT INTO countries(country,abbreviation)
VALUES ('Italy','ITA'); 

INSERT INTO countries(country,abbreviation)
VALUES ('Mexico','MEX'); 

INSERT INTO countries(country,abbreviation)
VALUES ('United States of America','USA'); 

 -- drop working_hours table to recreate --
DROP TABLE IF EXISTS working_hours;

    -- create the work hours table --
CREATE TABLE working_hours (
	working_hours_id		INT 		NOT NULL		AUTO_INCREMENT,
	work_description	VARCHAR(300)	NOT NULL,
	hours_value				INT 		NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

	PRIMARY KEY(working_hours_id)
);

 -- insert working hours --
INSERT INTO working_hours(work_description,hours_value)
VALUES ('part time day',4); 

INSERT INTO working_hours(work_description,hours_value)
VALUES ('full time day',8); 

INSERT INTO working_hours(work_description,hours_value)
VALUES ('overtime',1); 


 -- drop shipping_address table to recreate --
DROP TABLE IF EXISTS shipping_address;

 -- create shipping_address table --
CREATE TABLE shipping_address (
	shipping_address_id	INT 			NOT NULL		AUTO_INCREMENT,
	shipping_address1			VARCHAR(75)		NOT NULL,
	shipping_address2			VARCHAR(75)		NOT NULL,
	shipping_city				VARCHAR(75)		NOT NULL,
	state_id				INT 	NOT NULL,
	shipping_zipcode		CHAR(5) NOT NULL,
	country_id			INT		NOT NULL,
	customer_id			INT 			NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,
    
    PRIMARY KEY(shipping_address_id)
);
    

INSERT INTO shipping_address(shipping_address1,shipping_city,state_id,shipping_zipcode,country_id,customer_id)
VALUES ('3743 North Way','Madison',6,'53558',6,1); 

INSERT INTO shipping_address(shipping_address1,shipping_city,state_id,shipping_zipcode,country_id,customer_id)
VALUES ('3483 East Way','Pompano Beach',2,'33060',6,2); 

INSERT INTO shipping_address(shipping_address1,shipping_city,state_id,shipping_zipcode,country_id,customer_id)
VALUES ('1873 Brooks Rd','Portland',4,'97035',6,3); 

INSERT INTO shipping_address(shipping_address1,shipping_city,state_id,shipping_zipcode,country_id,customer_id)
VALUES ('4546 South Woods','New York',3,'10001',6,4); 

INSERT INTO shipping_address(shipping_address1,shipping_city,state_id,shipping_zipcode,country_id,customer_id)
VALUES ('4343 Alley Way','Lancaster',1,'93534',6,5); 

INSERT INTO shipping_address(shipping_address1,shipping_city,state_id,shipping_zipcode,country_id,customer_id)
VALUES ('38293 Southward','Houston',5,'77001',6,6); 


 -- drop billing_address table to recreate --
DROP TABLE IF EXISTS billing_address;

 -- create billing_address table --
CREATE TABLE billing_address (
	billing_address_id	INT 			NOT NULL		AUTO_INCREMENT,
	billing_address1			VARCHAR(75)		NOT NULL,
	billing_address2			VARCHAR(75)		NOT NULL,
	billing_city				VARCHAR(75)		NOT NULL,
	state_id				INT 	NOT NULL,
	billing_address_zipcode			CHAR(5) NOT NULL,
	country_id			INT		NOT NULL,
	customer_id			INT 			NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

   PRIMARY KEY(billing_address_id)
);


INSERT INTO billing_address(billing_address1,billing_city,state_id,billing_zipcode,country_id,customer_id)
VALUES ('3743 North Way','Madison',6,'53558',6,1); 

INSERT INTO billing_address(billing_address1,billing_city,state_id,billing_zipcode,country_id,customer_id)
VALUES ('4739 East Way','Pompano Beach',2,'33060',6,2); 

INSERT INTO billing_address(billing_address1,billing_city,state_id,billing_zipcode,country_id,customer_id)
VALUES ('1 East Capital','Portland',4,'97035',6,3); 

INSERT INTO billing_address(billing_address1,billing_city,state_id,billing_zipcode,country_id,customer_id)
VALUES ('4546 South Woods','New York',3,'10001',6,4); 

INSERT INTO billing_address(billing_address1,billing_city,state_id,billing_zipcode,country_id,customer_id)
VALUES ('4343 West Way','Lancaster',1,'93534',6,5); 

INSERT INTO billing_address(billing_address1,billing_city,state_id,billing_zipcode,country_id,customer_id)
VALUES ('3485 Eastward','Houston',5,'77001',6,6); 

 -- drop state table to recreate --
DROP TABLE IF EXISTS state;

-- create state table --
CREATE TABLE state (
	state_id		INT 			NOT NULL		AUTO_INCREMENT,
	state		VARCHAR(75)		NOT NULL,	
	abbreviation		CHAR(11)		NOT NULL,	
	created_date	TIMESTAMP,
	modified_date	TIMESTAMP,


	PRIMARY KEY(state_id)
);


INSERT INTO state(state,abbreviation)
VALUES('California', 'CA');

INSERT INTO state(state,abbreviation)
VALUES('Florida', 'FL');

INSERT INTO state(state,abbreviation)
VALUES('New York', 'NY');

INSERT INTO state(state,abbreviation)
VALUES('Oregon', 'OR');

INSERT INTO state(state,abbreviation)
VALUES('Texas', 'TX');

INSERT INTO state(state,abbreviation)
VALUES('Wisconsin', 'WI');

 -- drop c_order table to recreate --
DROP TABLE IF EXISTS c_order;

 -- create c_order table --
CREATE TABLE c_order (
	order_id				INT 		NOT NULL		AUTO_INCREMENT,
	customer_id				INT 		NOT NULL,
	shipping_address_id		INT 		NOT NULL,
	billing_address_id		INT			NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

	PRIMARY KEY(order_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (shipping_address_id) REFERENCES shipping_address(shipping_address_id),
	FOREIGN KEY (billing_address_id) REFERENCES billing_address(billing_address_id)
);

 -- insert  order table --
INSERT INTO c_order(customer_id,shipping_address_id,billing_address_id)
VALUES(1,1,1);

INSERT INTO c_order(customer_id,shipping_address_id,billing_address_id)
VALUES(2,2,2);

INSERT INTO c_order(customer_id,shipping_address_id,billing_address_id)
VALUES(3,3,3);

INSERT INTO c_order(customer_id,shipping_address_id,billing_address_id)
VALUES(4,4,4);

INSERT INTO c_order(customer_id,shipping_address_id,billing_address_id)
VALUES(5,5,5);

INSERT INTO c_order(customer_id,shipping_address_id,billing_address_id)
VALUES(6,6,6);


 -- drop order_items table to recreate --
DROP TABLE IF EXISTS order_items;

    -- create the order items table 
CREATE TABLE order_items (
	order_items_id			INT 		NOT NULL		AUTO_INCREMENT,
	order_id				INT			NOT NULL,
	order_product_id		INT			NOT NULL,
	qty						INT 		NOT NULL,
	product_inventory_id	INT			NOT NULL,
	delivery_id				INT 		NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

	PRIMARY KEY(order_items_id),
	FOREIGN KEY (order_id) REFERENCES c_order(order_id),
	FOREIGN KEY (order_product_id) REFERENCES order_product(order_product_id),
	FOREIGN KEY (product_inventory_id) REFERENCES product_inventory(product_inventory_id),
	FOREIGN KEY (delivery_id) REFERENCES delivery(delivery_id)
);

 -- insert order items --
INSERT INTO order_items(order_id,order_product_id,qty,order_product_inventory_id,order_delivery_id)
VALUES(1,1,5,1,1);

INSERT INTO order_items(order_id,order_product_id,qty,order_product_inventory_id,order_delivery_id)
VALUES(2,2,6,2,2);

INSERT INTO order_items(order_id,order_product_id,qty,order_product_inventory_id,order_delivery_id)
VALUES(3,3,3,3,3);

INSERT INTO order_items(order_id,order_product_id,qty,order_product_inventory_id,order_delivery_id)
VALUES(4,4,5,4,4);

INSERT INTO order_items(order_id,order_product_id,qty,order_product_inventory_id,order_delivery_id)
VALUES(5,1,6,1,5);

INSERT INTO order_items(order_id,order_product_id,qty,order_product_inventory_id,order_delivery_id)
VALUES(6,2,7,2,6);


 -- drop order_product_inventory table to recreate --
DROP TABLE IF EXISTS order_product_inventory;

 -- create order product inventory --
CREATE TABLE order_product_inventory (
	order_product_inventory_id		INT 		NOT NULL		AUTO_INCREMENT,
	order_product_id		INT 		NOT NULL,
	initial_qty		DECIMAL(15,2)		NOT NULL,
	current_qty		DECIMAL(15,2)		NOT NULL,
	current_price	DECIMAL(15,2)		NOT NULL,
	sale_price		DECIMAL(15,2)		NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

	PRIMARY KEY(order_product_inventory_id)
);


 -- insert order product inventory --
INSERT INTO order_product_inventory(order_product_id,initial_qty,current_qty,current_price)
VALUES(1,500,100,20);

INSERT INTO order_product_inventory(order_product_id,initial_qty,current_qty,current_price)
VALUES(2,500,400,40);

INSERT INTO order_product_inventory(order_product_id,initial_qty,current_qty,current_price)
VALUES(3,500,23,30);

INSERT INTO order_product_inventory(order_product_id,initial_qty,current_qty,current_price)
VALUES(4,500,250,15);


 -- drop order_delivery table to recreate --
DROP TABLE IF EXISTS order_delivery;

    -- create the order delivery table 
CREATE TABLE order_delivery (
	order_delivery_id		INT 		NOT NULL		AUTO_INCREMENT,
	carrier					VARCHAR(75) 		NOT NULL,
	tracking_number			VARCHAR(75) 			NOT NULL,
	expected_delivery_time	DATE 		NOT NULL,
	actual_delivery_date	DATE 		NOT NULL,	
	order_id				INT			NOT NULL,	
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

	PRIMARY KEY(order_delivery_id),
	FOREIGN KEY (order_id) REFERENCES c_order(order_id)
);


 -- insert into order deliery YYYY-MM-DD
INSERT INTO order_delivery(carrier,tracking_number,expected_delivery_date,actual_delivery_date,order_id)
VALUES('Fedex','12345473872','2023-02-25','2023-02-25',1);

INSERT INTO order_delivery(carrier,tracking_number,expected_delivery_date,actual_delivery_date,order_id)
VALUES('UPS','188943ge2893','2023-03-01','2023-03-05',2);

INSERT INTO order_delivery(carrier,tracking_number,expected_delivery_date,actual_delivery_date,order_id)
VALUES('Fedex','123723uio42','2023-02-16','2023-02-18',3);

INSERT INTO order_delivery(carrier,tracking_number,expected_delivery_date,actual_delivery_date,order_id)
VALUES('UPS','123194u5p82632','2023-04-01','2023-04-14',4);

INSERT INTO order_delivery(carrier,tracking_number,expected_delivery_date,actual_delivery_date,order_id)
VALUES('UPS','2342546456','2023-01-30','2023-02-05',5);

INSERT INTO order_delivery(carrier,tracking_number,expected_delivery_date,actual_delivery_date,order_id)
VALUES('Fedex','424234253','2023-04-26','2023-04-26',6);

 -- drop order_product table to recreate --
DROP TABLE IF EXISTS order_product;

    -- create the order product table --issue with foreign key
CREATE TABLE order_product (
	order_product_id		INT 		NOT NULL		AUTO_INCREMENT,
	product_name			VARCHAR(75)			NOT NULL,
	product_description		VARCHAR(75)			NOT NULL,
	order_product_inventory_id	INT			NOT NULL,
	created_date		TIMESTAMP		NOT NULL,
	modified_date		TIMESTAMP		NOT NULL,

	PRIMARY KEY(order_product_id)
);
 -- insert into order product --

INSERT INTO order_product(product_name,product_description,order_product_inventory_id)
VALUES('Merlot','Merlot wine',1);

INSERT INTO order_product(product_name,product_description,order_product_inventory_id)
VALUES('Cabernet','Cabernet wine',2);

INSERT INTO order_product(product_name,product_description,order_product_inventory_id)
VALUES('Chablis','Chablis wine',3);

INSERT INTO order_product(product_name,product_description,order_product_inventory_id)
VALUES('Chardonnay','Chardonnay wine',4);





