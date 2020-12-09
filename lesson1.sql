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

