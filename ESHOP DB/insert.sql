INSERT INTO Kategorie (id, nazev) VALUES (1, 'Elektronika') ON CONFLICT (id) DO NOTHING;
INSERT INTO Kategorie (id, nazev) VALUES (2, 'jine telefony') ON CONFLICT (id) DO NOTHING;
INSERT INTO Kategorie (id, nazev) VALUES (3, 'Mobily') ON CONFLICT (id) DO NOTHING;
INSERT INTO Kategorie (id, nazev) VALUES (4, 'Příslušenství') ON CONFLICT (id) DO NOTHING;

INSERT INTO Produkt (id, nazev, cena, id_kategorie) VALUES (1, 'iPhone 15', 25000, 1) ON CONFLICT (id) DO NOTHING;
INSERT INTO Produkt (id, nazev, cena, id_kategorie) VALUES(2,'Samsung galaxu A40', 10000, 1) ON CONFLICT (id) DO NOTHING;
INSERT INTO Produkt (id, nazev, cena, id_kategorie) VALUES(3, 'XIAOMI REDMI NOTE 4 PRO', 5000, 1) ON CONFLICT (id) DO NOTHING;
INSERT INTO Produkt (id, nazev, cena, id_kategorie) VALUES(4, 'kabel k nabijení mobilu C', 300, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO Zamestnanec (id, jmeno, pozice, mzda, datum_nastupu) 
VALUES (1, 'Petr Vedoucí', 'Manažer', 55000, CURRENT_DATE) ON CONFLICT (id) DO NOTHING;
INSERT INTO Zamestnanec (id, jmeno, pozice, mzda, datum_nastupu, email) 
VALUES (7, 'Jana Štěpánková', 'Skladník', 28000, '2023-05-10', 'jana.stepankova@eshop.cz') ON CONFLICT (id) DO NOTHING;
INSERT INTO Zamestnanec (id, jmeno, pozice, mzda, datum_nastupu, email) 
VALUES (8, 'Martin Kolář', 'Prodejce', 32000, '2023-08-15', 'martin.kolar@eshop.cz') ON CONFLICT (id) DO NOTHING;

INSERT INTO Zakaznik (id, jmeno, email, adresa) 
VALUES (1, 'Jan Novák', 'jan.novak@email.cz', 'Praha') ON CONFLICT (id) DO NOTHING;
INSERT INTO Zakaznik (id, jmeno, email, adresa) 
VALUES (3, 'Lucie Černá', 'lucie.cerna@seznam.cz', 'Ostrava') ON CONFLICT (id) DO NOTHING;
INSERT INTO Zakaznik (id, jmeno, email, adresa) 
VALUES (4, 'Marek Veselý', 'marek.vesely@gmail.com', 'Plzeň') ON CONFLICT (id) DO NOTHING;

INSERT INTO Dodavatel (id, nazev, telefon) VALUES (1, 'Alza', '123456789') ON CONFLICT (id) DO NOTHING;
INSERT INTO Dodavatel (id, nazev, telefon) VALUES (2, 'Global Logistics', '987654321') ON CONFLICT (id) DO NOTHING;
INSERT INTO Dodavatel (id, nazev, telefon) VALUES (3, 'Sport Supply Co.', '555444333') ON CONFLICT (id) DO NOTHING;
INSERT INTO Dodavatel (id, nazev, telefon) VALUES (4, 'Fast Delivery s.r.o.', '222111000') ON CONFLICT (id) DO NOTHING;

INSERT INTO Dodavatel_produktu VALUES (1, 1, 15000) ON CONFLICT DO NOTHING;
INSERT INTO Dodavatel_produktu VALUES (2, 1, 14500) ON CONFLICT DO NOTHING;
INSERT INTO Dodavatel_produktu VALUES (3, 1, 16000) ON CONFLICT DO NOTHING;
INSERT INTO Dodavatel_produktu VALUES (4, 1, 13000) ON CONFLICT DO NOTHING;

INSERT INTO Objednavka (id, datum_vytvoreni, celkova_cena, id_zakaznik, id_zamestnanec) 
VALUES (1, CURRENT_DATE, 25000, 1, 1) ON CONFLICT (id) DO NOTHING;
INSERT INTO Polozky_objednavky (id_objednavka, id_produkt, mnozstvi, jednotkova_cena) 
VALUES (1, 1, 1, 25000) ON CONFLICT (id_objednavka, id_produkt) DO NOTHING;

INSERT INTO Sklad (id, lokace, mnozstvi, id_produkt) 
VALUES (1, 'Sklad Praha', 50, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO Hodnoceni_produktu (id, pocet_hvezdicek, komentar, datum, id_produkt, id_zakaznik) 
VALUES (1, 5, 'Vynikající', CURRENT_DATE, 1, 1) ON CONFLICT (id) DO NOTHING;