--- https://teach.appcamps.de/karten/db4rom
--- Erstellt eine Tabelle in der Datenbank mit vier Spalten (ID, Name, Kontakt und E-Mail-Adresse).
CREATE TABLE Temp_Agency 
(AgencyID integer, AgencyName varchar(255), 
ContactName varchar(255), Mail varchar(255))

--- Erstellt eine Tabelle in der Datenbank mit vier Spalten (ID, Name, Kontakt und E-Mail-Adresse). Die ID wird nun auto-incremented und als Primärschlüssel gesetzt.
CREATE TABLE Temp_Agency 
(AgencyID integer 
PRIMARY KEY AUTOINCREMENT, 
AgencyName varchar(255), 
ContactName varchar(255), 
Mail varchar(255))

DROP TABLE Temp_Agency

--- Erstellt eine Tabelle in der Datenbank mit vier Spalten (ID, Name, Kontakt und E-Mail-Adresse). Es muss immer ein Agenturname angegeben werden (da NOT NULL) und die E-Mail-Adresse kann bei den unterschiedlichen Agenturen niemals identisch sein (da UNIQUE).
CREATE TABLE Temp_Agency 
(AgencyID integer 
PRIMARY KEY AUTOINCREMENT, 
AgencyName varchar(255)
NOT NULL, 
ContactName varchar(255), 
Mail varchar(255),
CONSTRAINT UC_Mail UNIQUE (Mail))

--- Erstellt eine Tabelle in der Datenbank mit vier Spalten (ID, Name, Kontakt und E-Mail-Adresse). Es muss immer ein Agenturname angegeben werden und der Kontakt von Herrn Hausmann wird automatisch eingefügt, wenn keine andere Mail angegeben wird.
CREATE TABLE Temp_Agency 
(AgencyID integer 
PRIMARY KEY AUTOINCREMENT, 
AgencyName varchar(255)
NOT NULL, 
ContactName varchar(255)
DEFAULT "Arnold Hausmann", 
Mail varchar(255))

--- constraints läschen und ändern
ALTER TABLE Temp_Agency 
DROP CONSTRAINT UC_Mail

ALTER TABLE Temp_Agency
MODIFY ContactName DEFAULT "Arnold Hausmann"

--- Ergänzt die Tabelle Temp_Agency um die Spalte Preis (Price). Beim Eintragen der Werte wird überprüft, ob der Preis höchstens bei 50 liegt.
ALTER TABLE Temp_Agency
ADD Price integer CHECK (Price<=50)

--- Fügt die Agentur "Cardinal" mit dem Kontakt Philipp (philipp@cardinal.de) in die Datenbank ein. Die Firma nimmt 40 pro Stunde.
INSERT INTO Temp_Agency 
(AgencyName, ContactName, Mail, Price) 
VALUES 
("Cardinal", "Philipp", 
"philipp@cardinal.de", 40)

--- Fügt die Agentur "Cardinal" mit der ID 1 und dem Kontakt Philipp (philipp@cardinal.de) in die Datenbank ein. Die Firma nimmt 40 pro Stunde.
INSERT INTO Temp_Agency 
VALUES 
(1, "Cardinal", "Philipp", 
"philipp@cardinal.de", 40)

--- Fügt die Agentur "Malibu" mit dem Kontakt Maria in die Datenbank ein. Die Firma nimmt 36 pro Stunde.
INSERT INTO Temp_Agency 
(AgencyName, ContactName, Price) 
VALUES 
("Malibu", "Maria", 36)

--- Fügt die Agentur "Despacito" mit dem Kontakt Dario (dario@despacito.de) in die Datenbank ein. Die Firma nimmt 54 pro Stunde.
INSERT INTO Temp_Agency 
(AgencyName, ContactName, Mail, Price) 
VALUES 
("Despacito", "Dario", 
"dario@despacito.de", 54)

--- Erweitert die Tabelle Orders mit dem Fremdschlüssel AgencyID.
ALTER TABLE Orders
ADD CONSTRAINT FK_AgencyOrders
FOREIGN KEY (AgencyID) 
REFERENCES Temp_Agency(AgencyID)
