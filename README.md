# E-shop-s-elektronikou-
Tento projekt obsahuje kompletní návrh a implementaci relační databáze pro internetový obchod s elektronikou, vytvořený v rámci studia na ČZU. Systém pokrývá kompletní životní cyklus od správy produktů a skladů až po hodnocení zákazníky. +2
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
