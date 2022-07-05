--  ******ISHOD1********

DROP TABLE PREDSJEDNIK;
DROP TABLE STADION;
DROP TABLE IGRACI;
DROP TABLE TRENER;
DROP TABLE LIGA;
DROP TABLE KLUBOVI;
DROP TABLE FANOVI;

DROP sequence FANOVI_ID_SEQ;
DROP sequence KLUBOVI_ID_SEQ;
DROP sequence IGRACI_ID_SEQ;
DROP sequence TRENER_ID_SEQ;
DROP sequence STADION_ID_SEQ;
DROP sequence LIGA_ID_SEQ;
DROP sequence PREDSJEDNIK_ID_SEQ;



CREATE TABLE Fanovi (
	ID NUMBER(9, 0) NOT NULL,
	JMBAG NUMBER(8, 0) UNIQUE NOT NULL,
	ime VARCHAR2(30) NOT NULL,
	prezime VARCHAR2(30) NOT NULL,
	email VARCHAR2(30) UNIQUE NOT NULL,
	password VARCHAR2(10) NOT NULL,
	spol NUMBER(1, 0) NOT NULL,
	constraint FANOVI_PK PRIMARY KEY (ID));

CREATE sequence FANOVI_ID_SEQ;

CREATE trigger BI_FANOVI_ID
  before insert on Fanovi
  for each row
begin
  select FANOVI_ID_SEQ.nextval into :NEW.ID from dual;
end;

/
CREATE TABLE Klubovi (
	ID NUMBER(9, 0) NOT NULL,
	IDfan NUMBER(9, 0) NOT NULL,
	klub VARCHAR2(30) NOT NULL,
	constraint KLUBOVI_PK PRIMARY KEY (ID));

CREATE sequence KLUBOVI_ID_SEQ;

CREATE trigger BI_KLUBOVI_ID
  before insert on Klubovi
  for each row
begin
  select KLUBOVI_ID_SEQ.nextval into :NEW.ID from dual;
end;

/
CREATE TABLE Igraci (
	ID NUMBER(9, 0) NOT NULL,
	IDklub NUMBER(9, 0) NOT NULL,
	IDtrener NUMBER(9, 0) NOT NULL,
	IDlige NUMBER(9, 0) NOT NULL,
	ime VARCHAR2(30) NOT NULL,
	prezime VARCHAR2(30) NOT NULL,
    nacionalnost VARCHAR2(30) NOT NULL,
	godine NUMBER(9, 0) NOT NULL,
	pozicija VARCHAR2(30) NOT NULL,
	broj NUMBER(9, 0) NOT NULL,
	broj_golova NUMBER(9, 0) NOT NULL,
	odigranih_utakmica NUMBER(9, 0) NOT NULL,
    vrijednost VARCHAR2(30) NOT NULL,
	constraint IGRACI_PK PRIMARY KEY (ID));

CREATE sequence IGRACI_ID_SEQ;

CREATE trigger BI_IGRACI_ID
  before insert on Igraci
  for each row
begin
  select IGRACI_ID_SEQ.nextval into :NEW.ID from dual;
end;

/
CREATE TABLE Trener (
	ID NUMBER(9, 0) NOT NULL,
	IDklub NUMBER(9, 0) NOT NULL,
	IDlige NUMBER(9, 0) NOT NULL,
	ime VARCHAR2(30) NOT NULL,
	prezime VARCHAR2(30) NOT NULL,
	godine NUMBER(9, 0) NOT NULL,
	nacionalnost VARCHAR2(30) NOT NULL,
	constraint TRENER_PK PRIMARY KEY (ID));

CREATE sequence TRENER_ID_SEQ;

CREATE trigger BI_TRENER_ID
  before insert on Trener
  for each row
begin
  select TRENER_ID_SEQ.nextval into :NEW.ID from dual;
end;

/
CREATE TABLE Stadion (
	ID NUMBER(9, 0) NOT NULL,
	IDklub NUMBER(9, 0) NOT NULL,
	ime VARCHAR2(30) NOT NULL,
	kapacitet NUMBER(9, 0) NOT NULL,
	adresa VARCHAR2(50) NOT NULL,
	constraint STADION_PK PRIMARY KEY (ID));

CREATE sequence STADION_ID_SEQ;

CREATE trigger BI_STADION_ID
  before insert on Stadion
  for each row
begin
  select STADION_ID_SEQ.nextval into :NEW.ID from dual;
end;

/
CREATE TABLE Liga (
	ID NUMBER(9, 0) NOT NULL,
	IDklub NUMBER(9, 0) NOT NULL,
	klub_lige VARCHAR2(30) NOT NULL,
	ostale_lige VARCHAR2(30) NOT NULL,
	drzava VARCHAR2(30) NOT NULL,
	constraint LIGA_PK PRIMARY KEY (ID));

CREATE sequence LIGA_ID_SEQ;

CREATE trigger BI_LIGA_ID
  before insert on Liga
  for each row
begin
  select LIGA_ID_SEQ.nextval into :NEW.ID from dual;
end;

/
CREATE TABLE Predsjednik (
	ID NUMBER(9, 0) NOT NULL,
	IDklub NUMBER(9, 0) NOT NULL,
	ime VARCHAR2(30) NOT NULL,
	prezime VARCHAR2(30) NOT NULL,
	constraint PREDSJEDNIK_PK PRIMARY KEY (ID));

CREATE sequence PREDSJEDNIK_ID_SEQ;

CREATE trigger BI_PREDSJEDNIK_ID
  before insert on Predsjednik
  for each row
begin
  select PREDSJEDNIK_ID_SEQ.nextval into :NEW.ID from dual;
end;

/

ALTER TABLE Klubovi ADD CONSTRAINT Klubovi_fk0 FOREIGN KEY (IDfan) REFERENCES Fanovi(ID);

ALTER TABLE Igraci ADD CONSTRAINT Igraci_fk0 FOREIGN KEY (IDklub) REFERENCES Klubovi(ID);
ALTER TABLE Igraci ADD CONSTRAINT Igraci_fk1 FOREIGN KEY (IDtrener) REFERENCES Trener(ID);
ALTER TABLE Igraci ADD CONSTRAINT Igraci_fk2 FOREIGN KEY (IDlige) REFERENCES Liga(ID);

ALTER TABLE Trener ADD CONSTRAINT Trener_fk0 FOREIGN KEY (IDklub) REFERENCES Klubovi(ID);
ALTER TABLE Trener ADD CONSTRAINT Trener_fk1 FOREIGN KEY (IDlige) REFERENCES Liga(ID);

ALTER TABLE Stadion ADD CONSTRAINT Stadion_fk0 FOREIGN KEY (IDklub) REFERENCES Klubovi(ID);

ALTER TABLE Liga ADD CONSTRAINT Liga_fk0 FOREIGN KEY (IDklub) REFERENCES Klubovi(ID);

ALTER TABLE Predsjednik ADD CONSTRAINT Predsjednik_fk0 FOREIGN KEY (IDklub) REFERENCES Klubovi(ID);



--insertanje podataka
--fanovi
insert into FANOVI ( JMBAG, ime, prezime, email, password, spol) values ( 12344, 'Marko', 'Markovic', 'mmarkovic@gmail.hr', 1111, 0);
insert into FANOVI ( JMBAG, ime, prezime, email, password, spol) values ( 12345, 'Ivana', 'Ivanovic', 'iivanovic@gmail.hr', 2222, 1);    
insert into FANOVI ( JMBAG, ime, prezime, email, password, spol) values ( 12346, 'Zoran', 'Zoranic', 'zzoranic@gmail.hr', 3333, 0);
insert into FANOVI ( JMBAG, ime, prezime, email, password, spol) values ( 12347, 'Matej', 'Matejevic', 'mmatejevic@gmail.hr', 4444, 0); 
insert into FANOVI ( JMBAG, ime, prezime, email, password, spol) values ( 12348, 'Matea', 'Mateovic', 'mmateovic@gmail.hr', 5555, 1); 
insert into FANOVI ( JMBAG, ime, prezime, email, password, spol) values ( 12349, 'Maks', 'Maksic', 'mmaksic@gmail.hr', 6666, 0); 



--delete from fanovi; -- brisanje podataka iz tablice
--alter table fanovi drop column id;--ne moze izbrisati parent podatak
--select * from fanovi;

--klubovi
insert into KLUBOVI ( IDfan, klub) values ( 1, 'Fc Barecelona');
insert into KLUBOVI ( IDfan, klub) values ( 2, 'Paris Saint-Germain FC');
insert into KLUBOVI ( IDfan, klub) values ( 3, 'FC Bayern Munchen');


--predsjednik
insert into PREDSJEDNIK ( IDklub, ime, prezime) values ( 1, 'Josep Maria', 'Bartomeu');
insert into PREDSJEDNIK ( IDklub, ime, prezime) values ( 2, 'Nasser', 'Al-Khelaifi');
insert into PREDSJEDNIK ( IDklub, ime, prezime) values ( 3, 'Herbert', 'Hainer');



--stadion
insert into STADION ( IDklub, ime, kapacitet, adresa) values ( 1, 'Camp Nou', 99354, 'C. d Aristides Maillol, 12; Barcelona');
insert into STADION ( IDklub, ime, kapacitet, adresa) values ( 2, 'Le Parc des Princes', 47929, '24 Rue du Commandant Guilbaud; Paris');
insert into STADION ( IDklub, ime, kapacitet, adresa) values ( 3, 'Allianz Arena', 69901, 'Werner-Heisenberg-Allee 25; Munchen');



--liga
insert into LIGA ( IDklub, klub_lige, ostale_lige, drzava) values ( 1, 'La Liga Santander', 'Uefa Champions League', 'Spanjolska');
insert into LIGA ( IDklub, klub_lige, ostale_lige, drzava) values ( 2, 'France Ligue 1', 'Uefa Champions League', 'Francuska');
insert into LIGA ( IDklub, klub_lige, ostale_lige, drzava) values ( 3, 'Bundesliga', 'Uefa Champions League', 'Njemacka');


--trener
insert into TRENER ( IDklub, IDlige, ime, prezime, godine, nacionalnost) values ( 1, 1, 'Ronald', 'Koeman', 57, 'Nizozemska');
insert into TRENER ( IDklub, IDlige, ime, prezime, godine, nacionalnost) values ( 2, 2, 'Mauricio', 'Pochettino', 48, 'Argentina');
insert into TRENER ( IDklub, IDlige, ime, prezime, godine, nacionalnost) values ( 3, 3, 'Hans-Dieter', 'Flick', 55, 'Njemacka');



--igraci, pocetnih 11 ova 4 kluba, ne radi insertanje ako prije nisam unio parent tablice
--tablica sa igracima se nece ispuniti kako treba ukoliko je jedan od podataka npr broj unique jer ce se taj broj upisati samo jednom
--za igraca jednog kluba, dok za igraca drugog kluba nece (ORA00001)


--BARCELONA
insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Lionel', 'Messi', 'Argentina', 33, 'napadac', 10, 706, 857, '80.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Antoine', 'Griezmann', 'Francuska',  29, 'napadac', 7, 237, 518, '60.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Ousmane', 'Dembele', 'Francuska', 23, 'napadac', 11, 53, 203, '50.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Sergio', 'Busquets', 'Spanjolska', 32, 'veznjak', 5, 17, 662, '10.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Frenkie', 'De Jong', 'Nizozemska', 23, 'veznjak', 21, 20, 240, '65.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Pedri', 'Gonzalez', 'Spanjolska', 18, 'veznjak', 16, 7, 72, '50.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Jordi', 'Alba', 'Spanjolska', 31, 'branic', 18, 32, 516, '25.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Gerard', 'Pique', 'Spanjolska', 33, 'branic', 3, 51, 660, '12.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Clement', 'Lenglet', 'Francuska', 25, 'branic', 15, 14, 284, '40.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Sergi', 'Roberto', 'Spanjolska', 28, 'branic', 20, 22, 367, '25.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 1, 1, 1, 'Marc-Andre', 'ter Stegen', 'Njemacka', 28, 'golman', 1, 0, 425, '75.00m');




--PSG
insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Neymar', 'da Silva Santos Junior', 'Brazil', 28, 'napadac', 10, 316, 467, '128.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Kylian', 'Mbappe', 'Francuska',  22, 'napadac', 7, 154, 254, '180.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Angel', 'Di Maria', 'Argentina', 32, 'napadac', 11, 151, 583, '28.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Marco', 'Verratti', 'Italija', 28, 'veznjak', 6, 14, 404, '60.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Ander', 'Herrera', 'Spanjolska', 31, 'veznjak', 21, 38, 438, '15.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Leandro', 'Paredes', 'Argentina', 26, 'veznjak', 8, 25, 260, '20.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Layvin', 'Kurzawa', 'Francuska', 28, 'branic', 20, 27, 247, '12.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Marquinhos', 'Aoas Correa', 'Brazil', 26, 'branic', 5, 31, 396, '70.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Abdou', 'Diallo', 'Francuska', 24, 'branic', 22, 9, 189, '25.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Alessandro', 'Florenzi', 'Italija', 29, 'branic', 24, 48, 399, '15.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 2, 2, 2, 'Keylor', 'Navas', 'Kostarika', 34, 'golman', 1, 0, 359, '10.00m');



--Bayern
insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Robert', 'Lewandowski', 'Poljska', 32, 'napadac', 9, 429, 593, '60.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Serge', 'Gnabry', 'Njemacka', 25, 'napadac', 7, 105, 235, '90.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Thomas', 'Muller', 'Njemacka', 31, 'napadac', 25, 238, 630, '35.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Leon', 'Goretzka', 'Njemacka', 25, 'veznjak', 18, 62, 322, '60.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Joshua', 'Kimmich', 'Njemacka', 25, 'veznjak', 6, 32, 363, '85.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Javi', 'Martinez', 'Spanjolska', 32, 'veznjak', 8, 27, 375, '10.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Benjamin', 'Pavard', 'Francuska', 24, 'branic', 5, 8, 226, '45.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Jerome', 'Boateng', 'Njemacka', 32, 'branic', 17, 11, 543, '12.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Niklas', 'Sule', 'Njemacka', 25, 'branic', 4, 16, 283, '48.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Alphonso', 'Davies', 'Kanada', 20, 'branic', 19, 21, 164, '80.00m');

insert into IGRACI ( IDklub, IDtrener, IDlige, ime, prezime, nacionalnost, godine, pozicija, broj, broj_golova, odigranih_utakmica, vrijednost) 
  values 
( 3, 3, 3, 'Manuel', 'Neuer', 'Njemacka', 34, 'golman', 1, 105, 641, '18.00m');





--select * from igraci;

--select * from klubovi
-- where
-- ID = 1


