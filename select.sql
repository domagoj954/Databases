--1. join  klub -> drzava
SELECT Klubovi.ID, Klubovi.klub, Liga.drzava
FROM Klubovi
INNER JOIN Liga
ON Klubovi.ID = Liga.ID;

--2. join igrac -> klub
SELECT Igraci.ime, Igraci.prezime, Klubovi.klub
FROM Igraci
INNER JOIN Klubovi
ON Igraci.IDklub = Klubovi.ID;

--3. join INNEER, klub - > stadion
SELECT klub, ime
FROM Klubovi
INNER JOIN Stadion
ON Klubovi.ID = Stadion.IDklub;

--4. JOIN INNER, fanovi -> klub
SELECT ime, prezime, klub
FROM Fanovi
INNER JOIN Klubovi
ON Fanovi.ID = Klubovi.IDfan;

--5. join FULL OUTER JOIN
SELECT Igraci.ime, Igraci.prezime, Klubovi.klub, Igraci.vrijednost
FROM Igraci
FULL OUTER JOIN Klubovi ON Igraci.IDklub = Klubovi.ID
ORDER BY Igraci.prezime;

--6. join FULL JOIN
SELECT Igraci.ime, Igraci.prezime, Klubovi.klub, Igraci.vrijednost
FROM Igraci
FULL OUTER JOIN Klubovi ON Igraci.IDklub = Klubovi.ID
ORDER BY (vrijednost) desc;
     
--7.
   




--1. select
SELECT ime || ' ' || prezime 
AS Napadaci
FROM Igraci
WHERE Pozicija = 'napadac';

--2. select
SELECT ime || ' ' || prezime || ' ' || godine 
AS  Stariji_igraci
FROM Igraci
WHERE godine >= 30; 

--3. select
SELECT ime || ' ' || prezime
AS Argentinci
FROM Igraci
WHERE Nacionalnost = 'Argentina';

--4. select
SELECT ime || ' ' || prezime || ' ' || nacionalnost || ' ' || broj
AS TOP_CLASS
FROM Igraci
WHERE pozicija = 'napadac' AND broj_golova >= 400;

--5. select
SELECT ime
AS Stadion
FROM STADION
WHERE ime LIKE 'L_%';

--6. select -> ukupan broj golova nekog kluba
SELECT k.klub ,
 SUM(broj_golova) AS TOTAL_SCORE 
FROM Igraci i, Klubovi k
 WHERE i.IDklub = k.ID 
   GROUP BY k.klub 
     ORDER BY SUM (broj_golova) desc; --asc, od najmanjeg


--7. select
SELECT ime , prezime, broj_golova
AS Top_scorers
FROM Igraci 
     ORDER BY (broj_golova) desc;

--8.select
SELECT ime, prezime, vrijednost
AS Players_Values
FROM Igraci
     ORDER BY (vrijednost) desc;
     
--9.select
SELECT klub_lige
FROM Liga
WHERE drzava = 'Italija';

--10.select
SELECT ime || ' ' || prezime
AS The_best_player
FROM Igraci
WHERE ID = 1;





