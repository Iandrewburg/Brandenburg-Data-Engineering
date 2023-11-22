use classicmodels;

SELECT 
	t1.ordernumber,
	t2.priceeach,
	t2.quantityordered,
	t3.productname,
	t3.productline,
	t4.city,
	t4.country,
	t1.orderdate
FROM orders t1
INNER JOIN orderdetails t2
ON t1.ordernumber = t2.ordernumber
INNER JOIN products t3
ON t2.productcode = t3.productcode
INNER JOIN customers t4
ON t1.customernumber = t4.customernumber;


CREATE TABLE new_order AS SELECT * FROM orders;

USE birdstrikes;
CREATE TABLE oklahoma_records AS SELECT * FROM birdstrikes WHERE state = 'oklahoma';