🛒 Electronics E-shop Database System
Tento projekt obsahuje kompletní návrh a implementaci relační databáze pro internetový obchod s elektronikou, vytvořený v rámci studia na ČZU. Systém pokrývá kompletní životní cyklus od správy produktů a skladů až po hodnocení zákazníky.
+2

Platform Overview
Databáze umožňuje efektivní správu e-shopu v těchto klíčových oblastech:

Product Management: Hierarchické členění elektroniky do kategorií s technickými parametry jako EAN kód a záruční lhůta.

Order Processing: Sledování stavu objednávek, způsobů dopravy a platebních metod.

Inventory & Logistics: Evidence skladových zásob v různých lokacích a vazba na konkrétní dodavatele.

Customer Feedback: Systém hodnocení produktů (1–5 hvězdiček) s textovými komentáři.

HR System: Správa zaměstnanců, kteří vyřizují jednotlivé objednávky.

Database Structure
Databáze se skládá z 10 propojených tabulek zajišťujících integritu dat:

Users & Staff: Zakaznik, Zamestnanec 

Product Engine: Produkt, Kategorie, Sklad 

Sales Workflow: Objednavka, Polozky_objednavky 

Supply Chain: Dodavatel, Dodavatel_produktu 

Reviews: Hodnoceni_produktu

<img width="839" height="753" alt="image" src="https://github.com/user-attachments/assets/b48d7b80-b185-4276-bd92-7445992c84a0" />

Key Features
Advanced Analytics

V projektu je implementováno 41 SQL dotazů pokrývajících širokou škálu analýz:

Identifikace nejprodávanějších produktů.

Výpočty průměrných hodnocení a statistik prodejů.
+1

Detekce produktů, které nejsou skladem nebo nebyly nikdy objednány.
<img width="753" height="644" alt="image" src="https://github.com/user-attachments/assets/8faa1e98-0758-4bff-b382-1bb3ca026be0" />

Technical Integrity

Implementace cizích klíčů (REFERENCES) pro zajištění konzistence dat.

Využití pohledů (CREATE VIEW) pro statistiky produktů a přehled dodavatelů.

Ošetření konfliktů při vkládání dat pomocí ON CONFLICT DO NOTHING.
<img width="1187" height="747" alt="image" src="https://github.com/user-attachments/assets/699abc21-6884-4f2e-a8ce-2ae159b5ab15" />

Getting Started
Protože školní portál DBS je neveřejný, můžete projekt spustit lokálně pomocí přiložených skriptů:

Spusťte create.sql pro vytvoření schématu tabulek.

Spusťte insert.sql pro naplnění databáze testovacími daty.

SQL dotazy a relační algebru naleznete v dokumentaci projektu.



