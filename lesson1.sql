SELECT SupplierName, City, Country FROM Suppliers WHERE Country LIKE "U%"

SELECT * FROM Products WHERE Price < 50 AND Price > 20 --Gibt alle Produkte aus, deren Preis kleiner als 50 and größer als 20 ist.

SELECT MAX(Price) FROM Products 

SELECT MIN(Price) FROM Products

SELECT AVG(Price) FROM Products

SELECT SUM(Price) FROM Products

SELECT * FROM Categories WHERE CategoryID = 2 OR CategoryID = 4 OR CategoryID = 6 --Wählt alle Kategorien mit Kategorie ID 2, 4 oder 6 aus. 

SELECT COUNT (*) FROM Customers --Anzahl der Kunden

SELECT COUNT (*) FROM Customers WHERE City = "London" --Anzahl der Kunden, die Sitz in London haben

SELECT COUNT (*) FROM Customers WHERE City = "London" AND PostalCode = "WA1 1DP" OR PostalCode = "WX1 6LT"

SELECT Price FROM Products ORDER BY Price ASC --Preise in aufsteigender Reihenfolge

SELECT DISTINCT City From Customers --Wie viele Customer aus verschiedenen Städten?

INSERT INTO Customers VALUES (9999, "Carne de Mamacita", "Maria Gonzales", "Gran Via les Corts 660", "Barcelona", "08010", "Spain")

INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes) VALUES ("Fischer", "Tarek", "1992-12-30", "tarekFischer92.pic", "Absolvent. Bachelor. Probezeit 6 Monate.")

update Employees set Notes = "Praktikantin (3 Monate). Studiert Informatik." where EmployeeID = 11

UPDATE Employees SET Notes = "1992-11-30" WHERE EmployeeID = 12

delete from Employees where EmployeeID = 11 --delete entry in table Employees with EmployeeID == 11

insert into Orders (CustomerID, EmployeeID, OrderDate, ShipperID) values (2, 1, "2017-06-22", 2)

insert into OrderDetails (OrderID, ProductID, Quantity) values (10444, 56, 34)

SELECT * FROM OrderDetails WHERE OrderID >= 10444


