# 📚 Library Management System Database

This repository contains the SQL schema, sequences, and documentation for a relational **Library Management System Database**. The project focuses on strict database normalization principles (up to 3NF) to ensure data integrity, eliminate redundancy, and effectively manage library operations.

## 🛠️ Project Features
* **Relational Architecture:** Designed with 6 interconnected tables (`Student`, `Author`, `Category`, `Book`, `Book_Status`, `Borrowing`) to represent real-world library entities.
* **Advanced Normalization:** The database schema was rigorously refined from Unnormalized Form (UNF) to **Third Normal Form (3NF)** to handle dependencies and prevent data anomalies.
* **Data Integrity:** Implements `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE` constraints, and Oracle `SEQUENCES` for auto-incrementing IDs.
* **Tracking System:** capable of tracking book availability, student borrowing history, and due dates.

## 📂 Database Schema (ERD Logic)
![Entity Relationship Diagram](ERD_For_Library.pdf) *Note: You can attach the image export of your PDF here.*

The database follows a logical flow to manage book circulation:
1.  **Metadata Tables:** `Author` and `Category` classify the books.
2.  **Book_Status:** A lookup table to manage states (e.g., Available, Borrowed, Lost).
3.  **Book:** The central entity that links Authors, Categories, and Status.
4.  **Student:** Stores user credentials and personal information.
5.  **Borrowing:** A transactional table that links `Student` and `Book` to track loan periods.

## 📐 Database Normalization Process
This project highlights a strong understanding of database theory. The schema was optimized through the following stages:
* **1NF:** Eliminated repeating groups and ensured atomicity (Separating Student and Book data).
* **2NF:** Removed partial dependencies (Ensuring non-key attributes depend on the full Primary Key).
* **3NF:** Removed transitive dependencies (Separating `Author` and `Category` into their own tables).

## 🔍 Featured Query (Relational Join)
The schema allows for generating complex reports. Below is a sample query logic to retrieve a list of **"Who borrowed what and when"** by joining 4 tables:

```sql
SELECT 
    S.fname || ' ' || S.lname AS Student_Name,
    B.bk_title AS Book_Title,
    A.author_name AS Author,
    Br.date_borrowed,
    Br.date_return
FROM BORROWING Br
JOIN STUDENT S ON Br.stud_id = S.stud_id
JOIN BOOK B ON Br.book_id = B.book_id
JOIN AUTHOR A ON B.author_id = A.author_id
WHERE Br.date_return IS NULL;
