-- Task 1
CREATE TABLE M_Vehicles
(	CarId int PRIMARY KEY,​
	CarBrand varchar(255) NOT NULL DEFAULT 'Ford',
	CarModel varchar(255) NOT NULL DEFAULT 'Fiesta',
	CarVIN varchar(17) NOT NULL UNIQUE, 
	CarManufacturingYear smallint NOT NULL,
	CarKitId tinyint NOT NULL CHECK (CarKitId>0),
	CarCount tinyint NOT NULL
);

-- Task 2
SELECT TOP 3 WITH TIES OrderQty, SalesOrderID, UnitPrice
FROM Sales.SalesOrderDetail
ORDER BY OrderQty DESC

-- Task 3
SELECT Product.Name, SalesOrderDetail.UnitPrice
FROM Production.Product
LEFT JOIN Sales.SalesOrderDetail ON Product.ProductID = SalesOrderDetail.ProductID

/*Task 4.
I suggest 2 variants on how to solve this task. The second one is universal.*/
-- Variant 1
CREATE TABLE Homework1
(Task varchar(20));

INSERT INTO Homework1 VALUES ('1234567890');

CREATE TABLE Homework2
(Task varchar(20));

INSERT INTO Homework2 VALUES ('1234567890');

SELECT REVERSE(Task) AS FIELD1 FROM Homework2;

SELECT SUBSTRING (Task, 10, 1)
		+ SUBSTRING (Task, 9, 1)
		+ SUBSTRING (Task, 8, 1)
		+ SUBSTRING (Task, 7, 1)
		+ SUBSTRING (Task, 6, 1)
		+ SUBSTRING (Task, 5, 1)
		+ SUBSTRING (Task, 4, 1)
		+ SUBSTRING (Task, 3, 1)
		+ SUBSTRING (Task, 2, 1)
		+ SUBSTRING (Task, 1, 1)
AS FIELD2 FROM Homework1;

-- Variant 2
DECLARE @length INT, @result VARCHAR (255), @symbol char;
SET @result = '';
SET @length = (SELECT LEN(Task) FROM Homework1);
WHILE @length >0
	BEGIN
		SET @symbol = (SELECT SUBSTRING (Task, @length, 1) FROM Homework1);
		SET @result = @result + @symbol;
		SET @length = @length - 1;
	END;
SELECT @result;
--End of Task 4

-- Task 5. It's a trick.
DECLARE @RowCount tinyint, @Counter tinyint, @CurrentRow tinyint, @LostId tinyint;
SET @RowCount = (SELECT COUNT (LOST_ID) FROM LOST_ID_TASK);
SET @CurrentRow = 0;
SET @LostId = 0;
SET @Counter = 1;
WHILE @Counter <= @RowCount
	BEGIN
		SET @CurrentRow = (SELECT LOST_ID FROM LOST_ID_TASK WHERE @Counter = LOST_ID);
		IF @CurrentRow IS NULL
			BEGIN
				SET @LostId = @Counter;
				BREAK
			END;
		SET @Counter = @Counter + 1;
	END;

SELECT @LostId AS [LOST ID];