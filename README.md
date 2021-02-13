# Database Management System - SQL Basics
### Home work 2:
1. Create a table with the following constraints:
   1. PRIMARY KEY;
   1. CHECK;
   1. DEFAULT;
   1. UNIQUE.  
   
*The name of the table should start with the first letter of your last name, the number of columns and filling in the
table is at your discretion.*  

2. Create a script that displays the first three "OrderQTY" with repeating values in descending order from the
"Sales.SalesOrderDetail" table (USE AdventureWorks2019).
As a result, display the columns: "OrderQTY", "SalesOrderId", "UnitPrice".  

3. Create a script that displays all products from Production.Product table and any price they might have from
Sales.SalesOrderDetail table (USE AdventureWorks2019).  

*As a result, display the columns: "Name", "UnitPrice".*  

4. Invert the value of the Task column (Homework table) in reverse order without using the Reverse function.
~~~sql
Create table Homework2(
                  Task varchar(20)
                      );
INSERT INTO Homework2 VALUES ('1234567890');
SELECT REVERSE(Task) AS FIELD1 FROM Homework2;
~~~
*You should get the same result*  

5. Create a script that displays the first (minimum) skipped ID from TABLE LOST_ID_TASK.
~~~sql
CREATE TABLE LOST_ID_TASK(
                          LOST_ID int
                         );
INSERT INTO LOST_ID_TASK (LOST_ID) VALUES (1);
INSERT INTO LOST_ID_TASK (LOST_ID) VALUES (2);
INSERT INTO LOST_ID_TASK (LOST_ID) VALUES (4);
INSERT INTO LOST_ID_TASK (LOST_ID) VALUES (5);
INSERT INTO LOST_ID_TASK (LOST_ID) VALUES (7);
INSERT INTO LOST_ID_TASK (LOST_ID) VALUES (8);
INSERT INTO LOST_ID_TASK (LOST_ID) VALUES (9);
INSERT INTO LOST_ID_TASK (LOST_ID) VALUES (10);
~~~
