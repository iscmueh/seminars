
/* SELECT */
select * from customers;
select contactname from customers;
select customerid, customername, contactname, address from customers;

/* SELECT DISTINCT* - Được sử dụng để chọn */

select customername from customers;
select distinct customername from customers;



/* where */

select * from customers where country = 'Mexico';

select * from customers where customerid < 10;

select * from customers where customerid <= 10;

/* AND and OR */

SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';


select * from products
where supplierid = 1 and price < 50;

/* OR */

select * from customers where customerid = 10 or customerid = 1;

select * from customers where customerid <= 10 or customerid >=30;

/* NOT */

SELECT * FROM Customers
WHERE NOT Country='Germany';

/* AND, OR, NOT */

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');


SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA' AND NOT Country='Mexico';


/* ORDER BY */

/*SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;*/

SELECT * FROM Customers
ORDER BY Country;

/*INSERT INTO */

/*INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);*/

INSERT INTO customers (customercame, contactname, address, city, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');


INSERT INTO customers (customerid, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('93','Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');


INSERT INTO customers (customerid,CustomerName, City, Country)
VALUES ('94','Cardinal', 'Stavanger', 'Norway');



/*NULL Value */

/*SELECT column_names
FROM table_name
WHERE column_name IS NULL;*/

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;


/*UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;*/

UPDATE Customers
SET ContactName = null 
WHERE CustomerID = 94;


UPDATE Customers
SET ContactName = 'Nam Le' 
WHERE CustomerID = 94;

/*DELETE FROM table_name WHERE condition;*/


DELETE FROM Customers WHERE CustomerName='Nam Le';

/*SELECT MIN(column_name)
FROM table_name
WHERE condition;*/

SELECT MIN(Price) AS SmallestPrice
FROM Products;


/*SELECT COUNT(column_name)
FROM table_name
WHERE condition;*/

SELECT COUNT(ProductID)
FROM Products;

SELECT AVG(Price)
FROM Products;

SELECT SUM(Quantity)
FROM OrderDetails;

/*SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;*/


SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';


SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

SELECT * FROM Customers
WHERE CustomerName LIKE '__r%';


SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';


SELECT * FROM Customers
WHERE ContactName LIKE 'p%n';


SELECT * FROM Customers
WHERE ContactName LIKE 'P%n';

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';

/*JOIN */


SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

/* INNER JOIN */
/* lệnh này được dùng để chọn các dòng dữ liệu đều có trong cả 2 bảng
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;*/


SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

/* hợp nhất 3 bảng */
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

/*SQL LEFT JOIN Keyword
The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.

LEFT JOIN Syntax
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;*/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

/*SQL RIGHT JOIN Keyword
The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

RIGHT JOIN Syntax
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;*/


SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

/*SQL FULL OUTER JOIN Keyword
The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

Tip: FULL OUTER JOIN and FULL JOIN are the same.

FULL OUTER JOIN Syntax
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;*/


SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;




































