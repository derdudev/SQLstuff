--- lernkarten: https://teach.appcamps.de/karten/db3paris

SELECT Products.Productname, Suppliers.SupplierName 
FROM Products 
JOIN Suppliers 
ON Products.SupplierID = Suppliers.SupplierID

--- Zeigt an, wie viele Lieferanten aus unterschiedlichen Städten Produkte liefern. 
SELECT COUNT(DISTINCT Suppliers.City) 
FROM Products
JOIN Suppliers 
ON Products.SupplierID=Suppliers.SupplierID

--- Zeigt an, wie viele Lieferanten aus unterschiedlichen Ländern Produkte liefern. 
SELECT COUNT(DISTINCT Suppliers.Country) 
FROM Products
JOIN Suppliers 
ON Products.SupplierID=Suppliers.SupplierID

--- Zeigt den Lieferantennamen, die Stadt  aus der der Lieferant kommt und den Produktnamen an, wenn die Lieferantenstadt nicht mit L beginnt. 
SELECT Suppliers.SupplierName, Suppliers.City, 
Products.ProductName
FROM Products
JOIN Suppliers 
ON Products.SupplierID=Suppliers.SupplierID
WHERE Suppliers.City NOT LIKE "L%";

--- Zeigt an, wie viele Lieferanten aus einer mit "B" beginnenden Stadt kommen
SELECT COUNT(DISTINCT Suppliers.City) 
FROM Products
JOIN Suppliers 
ON Products.SupplierID=Suppliers.SupplierID
WHERE Suppliers.City LIKE "B%"

--- Erstellt einen Join zwischen den Tabellen Products und Categories. Es werden nur die Spalten mit den Produktnamen und mit dem Namen der Kategorie ausgeben. Die Ausgabe wird alphabetisch nach der Kategorie sortiert und die Spalte der Kategorie in "Categories sorted list" umbenannt. 
SELECT Products.ProductName, Categories.CategoryName 
AS "Categories sorted list"
FROM Products
JOIN Categories 
ON Products.CategoryID=Categories.CategoryID
ORDER BY Categories.CategoryName

--- Erstellt von Products eine Verknüpfung zu Suppliers und Categories. Zeigt den Produktnamen, den Lieferantennamen und die Kategorie an.
SELECT Products.Productname, 
Suppliers.SupplierName, Categories.CategoryName 
FROM Products 
JOIN Suppliers 
ON Products.SupplierID = Suppliers.SupplierID
INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID

--- Zeigt Produktname, Kategoriename und -beschreibung
SELECT Products.Productname, Categories.CategoryName, Categories.Description
FROM Products 
JOIN Suppliers 
ON Products.SupplierID = Suppliers.SupplierID
INNER JOIN Categories

--- Zeigt den Produktnamen und die Kategorie für alle Produkte mit einem Preis zwischen 20 und 30.
SELECT Products.ProductName, 
Categories.CategoryName, Products.Price 
FROM Products
JOIN Categories 
ON Products.CategoryID=Categories.CategoryID
WHERE Products.Price BETWEEN 20 AND 30

--- Gibt den Produktnamen, den Kategorienamen und den Preis für das Produkt mit dem höchsten Preis aus.
SELECT Products.ProductName, 
Categories.CategoryName, MAX(Products.Price) 
FROM Products
JOIN Categories 
ON Products.CategoryID=Categories.CategoryID

--- Gibt einen Produktnamen, den passenden Kategorienamen und den Durchschnittspreis aller Produkte aus.
SELECT Products.ProductName, 
Categories.CategoryName, AVG(Products.Price) 
FROM Products
JOIN Categories 
ON Products.CategoryID=Categories.CategoryID

--- Welcher Preis/ welche Preise stehen beim Produkt
SELECT ProductID, ProductName, Price 
FROM Products
WHERE ProductName LIKE "Original%"
