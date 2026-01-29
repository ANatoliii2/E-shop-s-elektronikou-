Tady je finální verze tvého **README.md** souboru. Je napsaná v profesionální angličtině, která je na GitHubu standardem, a používá strukturu, kterou personalisté a vývojáři očekávají.

---

# 🛒 Electronics E-shop Database System

A comprehensive relational database solution designed to manage an e-commerce platform specializing in electronics. This project covers the entire data lifecycle, from inventory management and supplier logistics to customer order processing and feedback analysis.

## 📋 Platform Architecture

The system is built on a robust relational model consisting of 10 interconnected tables:

* **Product Management:** Hierarchical categorization of electronics with technical specifications (EAN, warranty, weight).
* **Sales Workflow:** Complete tracking of orders, including payment methods, shipping statuses, and detailed itemized lists.
* **Inventory & Logistics:** Multi-location warehouse tracking linked to specific suppliers and purchase prices.
* **User & HR Management:** Management of customer profiles and staff members responsible for order fulfillment.
* **Customer Feedback:** A dedicated rating and review system to track product satisfaction.

## 🛠 Technical Stack

* **Database Engine:** Originally developed for **Oracle 11**, fully compatible with **PostgreSQL**.
* **Integrity:** Strict enforcement of Referential Integrity through foreign keys and constraints.
* **Views:** Implementation of virtual tables for supplier overviews and product statistics.

## 📊 Database Design

### Conceptual Schema

The logical structure of the database, ensuring a clean data flow without circular dependencies.
<img width="767" height="750" alt="image" src="https://github.com/user-attachments/assets/a7a257e3-cdd4-4ca4-a406-dad5980860bb" />

### Relational Schema

The technical mapping of the database, detailing primary/foreign keys and data types.
<img width="1209" height="734" alt="image" src="https://github.com/user-attachments/assets/6813c4be-b35c-49e5-8428-f41a98e77e68" />
## 🔍 Data Analysis (SQL Queries)

This project implements **41 analytical queries** covering a wide range of business requirements:

* **Advanced Joins:** `LEFT`, `RIGHT`, and `FULL OUTER JOIN` for complex data merging.
* **Set Operations:** `UNION`, `EXCEPT`, and `INTERSECT` for data comparison.
* **Subqueries:** Nested `SELECT` statements in `WHERE`, `FROM`, and `SELECT` clauses, including correlated subqueries using `EXISTS`.
* **Aggregations:** Sophisticated statistics using `GROUP BY` and `HAVING` clauses.

## 🚀 Getting Started

To replicate this database environment locally:

1. **Clone the repository:** Download all project files to your local machine.
2. **Database Setup:** Create a new database in your preferred SQL environment (PostgreSQL/Oracle).
3. **Build Schema:** Execute `create.sql` to generate all tables and relations.
4. **Populate Data:** Execute `insert.sql` to import sample datasets, including products like iPhone 15 and various customer profiles.
5. **Analyze:** Run the queries provided in the `main.xml` documentation to explore the data insights.

---


