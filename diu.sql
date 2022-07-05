--KLUBOVI
insert into KLUBOVI (ID, IDfan, klub) values (4, 4, 'Liverpool F.C.');
insert into KLUBOVI (ID, IDfan, klub) values (5, 5, 'Juventus F.C.');
insert into KLUBOVI (ID, IDfan, klub) values (6, 6, 'Real Madrid C.F.');

--PREDSJEDNIK
insert into PREDSJEDNIK (ID, IDklub, ime, prezime) values (4, 4, 'Tom', 'Werner');
insert into PREDSJEDNIK (ID, IDklub, ime, prezime) values (5, 5, 'Andrea', 'Agnelli');
insert into PREDSJEDNIK (ID, IDklub, ime, prezime) values (6, 6, 'Florentino', 'Perez');

--STADION
insert into STADION (ID, IDklub, ime, kapacitet, adresa) values (4, 4, 'Anfield', 53394, 'Anfield Rd, Anfield, Liverpool L4 0TH');
insert into STADION (ID, IDklub, ime, kapacitet, adresa) values (5, 5, 'Juventus Stadium', 41507, 'Str. Com. di Altessano 131; Torino');
insert into STADION (ID, IDklub, ime, kapacitet, adresa) values (6, 6, 'Santiago Bernabeu', 81044, 'Av. de Concha Espina, 1, 28036 Madrid');

--LIGA
insert into LIGA (ID, IDklub, klub_lige, ostale_lige, drzava) values (4, 4, 'Premier League', 'Uefa Champions League', 'Engleska');
insert into LIGA (ID, IDklub, klub_lige, ostale_lige, drzava) values (5, 5, 'Serie A', 'Uefa Champions League', 'Italija');

--TRENER
insert into TRENER (ID, IDklub, IDlige, ime, prezime, godine, nacionalnost) values (4, 4, 4, 'Jurgen', 'Klopp', 53, 'Njemacka');
insert into TRENER (ID, IDklub, IDlige, ime, prezime, godine, nacionalnost) values (5, 5, 5, 'Andrea', 'Pirlo', 41, 'Italija');
insert into TRENER (ID, IDklub, IDlige, ime, prezime, godine, nacionalnost) values (6, 6, 1, 'Zinedine' , 'Zidane', 49, 'Francuska/Alzir');


--Liverpool
insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(34, 4, 4, 4, 'Mohamed', 'Salah', 'Egipat', 28, 'napadac', 11, 215, 435, '120.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(35, 4, 4, 4, 'Sadio', 'Mane', 'Senegal', 28, 'napadac', 10, 182, 431, '120.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(36, 4, 4, 4, 'Robero', 'Firmino', 'Brazil', 29, 'napadac', 9, 148, 473, '72.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(37, 4, 4, 4, 'Fabinho', 'Henrique Tavares', 'Brazil', 27, 'veznjak', 3, 32, 371, '60.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(38, 4, 4, 4, 'Georginio', 'Wijnaldum', 'Nizozemska', 30, 'veznjak', 5, 138, 576, '40.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(39, 4, 4, 4, 'Alex', 'Oxlade-Chamberlain', 'Engleska', 27, 'veznjak', 15, 48, 347, '24.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(40, 4, 4, 4, 'Virgil', 'van Dijk', 'Nizozemska', 29, 'branic', 4, 47, 427, '80.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(41, 4, 4, 4, 'Trent', 'Alexander-Arnold', 'Engleska', 22, 'branic', 66, 18, 197, '110.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(42, 4, 4, 4, 'Andrew', 'Robertson', 'Skotska', 26, 'branic', 26, 20, 357, '75.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(43, 4, 4, 4, 'Joel', 'Matip', 'Kamerun', 29, 'branic', 32, 28, 368, '32.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(44, 4, 4, 4, 'Allison', 'Becker', 'Brazil', 28, 'golman', 1, 0, 287, '80.00m');



--Juventus
insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(45, 5, 5, 5, 'Cristiano', 'Ronaldo', 'Portugal', 35, 'napadac', 7, 711, 910, '60.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(46, 5, 5, 5, 'Paulo', 'Dybala', 'Argentina', 27, 'napadac', 10, 121, 362, '70.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(47, 5, 5, 5, 'Alvaro', 'Morata', 'Spanjolska', 28, 'napadac', 9, 166, 412, '50.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(48, 5, 5, 5, 'Aaron', 'Ramsey', 'Wales', 30, 'veznjak', 8, 86, 474, '20.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(49, 5, 5, 5, 'Arthur', 'Melo', 'Brazil', 24, 'veznjak', 5, 11, 178, '50.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(50, 5, 5, 5, 'Adrien', 'Rabiot', 'Francuska', 25, 'veznjak', 25, 23, 336, '32.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(51, 5, 5, 5, 'Alex', 'Sandro', 'Brazil', 29, 'branic', 12, 15, 385, '28.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(52, 5, 5, 5, 'Danilo', 'Luiz da Silva', 'Brazil', 29, 'branic', 13, 31, 370, '17.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(53, 5, 5, 5, 'Leonardo', 'Bonucci', 'Italija', 33, 'branic', 19, 38, 601, '13.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(54, 5, 5, 5, 'Giorgio', 'Chiellini', 'Italija', 36, 'branic', 3, 11, 41, '2.00m');

insert into IGRACI (ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
(55, 5, 5, 5, 'Wojciech', 'Szczesny', 'Poljska', 30, 'golman', 1, 0, 420, '35.00m');



--Real Madrid
INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(56, 6, 6, 1, 'Karim', 'Benzema', 'Francuska', 34, 'napadac', 9, 400, 510, '25m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(57, 6, 6, 1, 'Vinicius', 'Junior', 'Brazil', 20, 'napadac', 20, 22, 60, '40m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost,godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES 
(58, 6, 6, 1, 'Marco', 'Asensio', 'Spanjolska', 20, 'napadac', 11, 80, 110, '35m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(59, 6, 6, 1, 'Toni', 'Kroos', 'Njemacka', 31, 'veznjak', 20, 280, 40, '40m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(60, 6, 6, 1, 'Carlos Henrique', 'Casemiro', 'Brazil', 29, 'veznjak', 14, 180, 28, '75m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(61, 6, 6, 1, 'Luka', 'Modric', 'Hrvatska', 36, 'veznjak', 10, 310, 40, '10m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(62, 6, 6, 1, 'Marcelo', 'Viero da Silva Junior', 'Brazil', 34, 'branic', 12, 410, 80, '7.50m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(63, 6, 6, 1, 'Sergio', 'Ramos', 'Spanjolska', 35, 'branic', 4, 610, 110, '10m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(64, 6, 6, 1, 'Nacho', 'Fernandez', 'Spanjolska', 31, 'branic', 20, 250, 20, '10m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(65, 6, 6, 1, 'Ferland', 'Mendy', 'Brazil', 26, 'branic', 23, 2, 120, '50m');

INSERT INTO IGRACI(ID, IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost)
  VALUES
(65, 6, 6, 1, 'Thibaut', 'Courtois', 'Belgija', 29, 'golman', 1, 0, 410, '60m');


UPDATE IGRACI
SET broj_golova = 950
WHERE ID = 45;

UPDATE Trener 
SET ID = 6, IDklub = 6, IDlige = 1, ime = 'Carlo', prezime = 'Ancelloti', godine = 62, nacionalnost = 'Italija'
WHERE ID = 6;

UPDATE Trener 
SET ID = 5, IDklub = 5, IDlige = 5, ime = 'Massimilliano', prezime = 'Allegri', godine = 53, nacionalnost = 'Italija'
WHERE ID = 5;

UPDATE Predsjednik
SET ime = 'Joan', prezime = 'Laporta'
WHERE ID = 1;

UPDATE IGRACI
SET broj_golova = 180, odigranih_utakmica = 310
WHERE ID = 13;

UPDATE IGRACI
SET godine = 34, broj_golova = 910, odigranih_utakmica = 800
WHERE ID = 1;

UPDATE IGRACI
SET vrijednost = '130m'
WHERE ID = 12;

UPDATE IGRACI
SET vrijednost = '100m'
WHERE ID = 34;

UPDATE IGRACI
SET godine = 34, broj_golova = 110, odigranih_utakmica = 200
WHERE ID = 58;

UPDATE IGRACI
SET godine = 19
WHERE ID = 6;

UPDATE TRENER
SET ime = 'Carlo', prezime = 'Ancelotti', godine = 60, nacionalnost = 'Italija'
WHERE ID = 6;

select * from trener;


DELETE FROM IGRACI i
WHERE i.vrijednost < 10;

DELETE FROM IGRACI
where nacionalnost = 'Hrvatska';




