-- Číselníky a nezávislé tabulky

DROP TABLE IF EXISTS Hodnoceni_produktu CASCADE;
DROP TABLE IF EXISTS Dodavatel_produktu CASCADE;
DROP TABLE IF EXISTS Polozky_objednavky CASCADE;
DROP TABLE IF EXISTS Sklad CASCADE;
DROP TABLE IF EXISTS Objednavka CASCADE;
DROP TABLE IF EXISTS Produkt CASCADE;
DROP TABLE IF EXISTS Zakaznik CASCADE;
DROP TABLE IF EXISTS Zamestnanec CASCADE;
DROP TABLE IF EXISTS Kategorie CASCADE;
DROP TABLE IF EXISTS Dodavatel CASCADE;
DROP VIEW IF EXISTS statistiky_produktu CASCADE;
DROP VIEW IF EXISTS prehled_dodavatelu CASCADE;

CREATE TABLE Kategorie (
    id SERIAL PRIMARY KEY,
    nazev VARCHAR(100) NOT NULL
);

CREATE TABLE Zamestnanec (
    id SERIAL PRIMARY KEY,
    jmeno VARCHAR(100) NOT NULL,
    pozice VARCHAR(50),
    mzda DECIMAL(10,2),
    datum_nastupu DATE,
    telefon VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Zakaznik (
    id SERIAL PRIMARY KEY,
    jmeno VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    adresa VARCHAR(255)
);

CREATE TABLE Dodavatel (
    id SERIAL PRIMARY KEY,
    nazev VARCHAR(100) NOT NULL,
    telefon VARCHAR(20)
);

-- Tabulky s cizími klíči
CREATE TABLE Produkt (
    id SERIAL PRIMARY KEY,
    nazev VARCHAR(255) NOT NULL,
    cena DECIMAL(10,2) NOT NULL,
    popis TEXT,
    ean_kod VARCHAR(20),
    zarucni_lhuta INTEGER,
    hmotnost DECIMAL(10,2),
    id_kategorie INTEGER REFERENCES Kategorie(id)
);

CREATE TABLE Objednavka (
    id SERIAL PRIMARY KEY,
    datum_vytvoreni DATE NOT NULL,
    datum_odeslani DATE,
    datum_doruceni DATE,
    zpusob_platby VARCHAR(50),
    zpusob_dopravy VARCHAR(50),
    celkova_cena DECIMAL(10,2),
    id_zakaznik INTEGER REFERENCES Zakaznik(id),
    id_zamestnanec INTEGER REFERENCES Zamestnanec(id) -- kdo objednávku vyřídil
);

CREATE TABLE Polozky_objednavky (
    id_objednavka INTEGER REFERENCES Objednavka(id) ON DELETE CASCADE,
    id_produkt INTEGER REFERENCES Produkt(id),
    mnozstvi INTEGER NOT NULL,
    jednotkova_cena DECIMAL(10,2),
    PRIMARY KEY (id_objednavka, id_produkt)
);

CREATE TABLE Sklad (
    id SERIAL PRIMARY KEY,
    lokace VARCHAR(100),
    mnozstvi INTEGER,
    id_produkt INTEGER REFERENCES Produkt(id)
);

CREATE TABLE Hodnoceni_produktu (
    id SERIAL PRIMARY KEY,
    pocet_hvezdicek INTEGER CHECK (pocet_hvezdicek BETWEEN 1 AND 5),
    komentar TEXT,
    datum DATE,
    id_produkt INTEGER REFERENCES Produkt(id),
    id_zakaznik INTEGER REFERENCES Zakaznik(id)
);

CREATE TABLE Dodavatel_produktu (
    id_dodavatel INTEGER REFERENCES Dodavatel(id),
    id_produkt INTEGER REFERENCES Produkt(id),
    nakupni_cena DECIMAL(10,2),
    PRIMARY KEY (id_dodavatel, id_produkt)
);
CREATE VIEW statistiky_produktu AS 
SELECT id, nazev, cena FROM Produkt;
