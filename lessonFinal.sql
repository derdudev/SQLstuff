-- b
SELECT k.KNr, a.Name
FROM artikel as a, kunden as k, bestellt as b
WHERE b.KNr = k.KNr AND b.ANr = a.ANr

-- c
SELECT b.Zeitpunkt
FROM bestellt as b, kunden as k
WHERE k.Vorname = "Thomas" AND k.Nachname = "Tischler"AND b.KNr = k.KNr

--d
SELECT a.Name
FROM artikel as a, bestellt as b, kunden as k  
WHERE k.Vorname = "Maximilian" AND k.Nachname = "Mayer" AND a.ANr = b.ANr

--e
SELECT DISTINCT CONCAT(k.Vorname," ",  k.Nachname) as Name 
FROM kunden as k, artikel as a, bestellt as b 
WHERE b.KNr = k.KNr AND a.ANr = b.ANr
ORDER BY b.Zeitpunkt DESC

--f
SELECT DISTINCT CONCAT(k.Vorname, " ", k.Nachname) as Kunde, COUNT(*) as Bestellungen
FROM kunden as k, bestellt as b
WHERE k.KNr = b.KNr
GROUP BY k.KNr

