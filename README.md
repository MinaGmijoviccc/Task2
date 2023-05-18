# Task2

***Ceo prikaz***
SELECT t1.Ime, t1.Prezime, t1.Automobil, t1.Boja, t2.Kolicina, t2.Cena, t2.Datum
FROM Prodavac t1
JOIN Prodaja t2 ON t1.idProdavca = t2.ProdavaciD;

***Koliko je Ognjen Trifunovic prodao Citroena, bele boje, po kojoj ceni i kog datuma:
SELECT p1.kolicina,p1.cena,p1.datum 
FROM Prodaja p1  
JOIN Prodavac p2 ON p2.IdProdavca = p1.ProdavaciD WHERE p2.ime = 'Mina' AND p2.prezime = 'Gmijovic' AND p2.automobil='BMW' AND p2.boja = 'crna';
