# 🐘 PostgreSQL Learning Journey

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Topics](https://img.shields.io/badge/Topics-14-blue?style=for-the-badge)

A structured collection of PostgreSQL concepts, queries, and mini-projects — built from the ground up as part of my SQL learning journey.

---

## 📁 Repository Structure

```
PostgreSQL/
├── Introduction to SQL/
├── Data type in SQL/
├── CRUD OPERATIONS/
├── Constraints in SQL/
├── Clauses in SQL/
├── Operators in SQL/
├── Aggregate Function in SQL/
├── SQL String Function/
├── CASE IN SQL/
├── Alter in SQL/
├── FOREIGN KEY IN SQL/
├── INNER AND FULL JOIN/
├── LEFT AND RIGHT JOIN/
└── Basic Projects in SQL/
```

---

## 📚 Topics Covered

### 1. 🚀 Introduction to SQL
- What is SQL and PostgreSQL?
- Setting up PostgreSQL locally
- psql shell basics
- Creating and connecting to databases
- Basic SQL syntax and conventions

---

### 2. 🔢 Data Types in SQL
- Numeric types: `INT`, `BIGINT`, `NUMERIC`, `FLOAT`
- Text types: `VARCHAR`, `CHAR`, `TEXT`
- Date/Time types: `DATE`, `TIME`, `TIMESTAMP`
- Boolean, UUID, and JSON types
- Choosing the right data type

---

### 3. ✏️ CRUD Operations
- **CREATE** — `INSERT INTO` statements
- **READ** — `SELECT` queries, filtering with `WHERE`
- **UPDATE** — Modifying existing records
- **DELETE** — Removing records safely
- Best practices to avoid accidental data loss

---

### 4. 🔒 Constraints in SQL
- `NOT NULL` — Enforcing required fields
- `UNIQUE` — Preventing duplicate values
- `PRIMARY KEY` — Uniquely identifying rows
- `CHECK` — Validating data before insertion
- `DEFAULT` — Setting fallback values

---

### 5. 📋 Clauses in SQL
- `WHERE` — Filtering rows
- `ORDER BY` — Sorting results
- `GROUP BY` — Grouping data
- `HAVING` — Filtering grouped data
- `LIMIT` & `OFFSET` — Pagination

---

### 6. ➕ Operators in SQL
- Arithmetic operators: `+`, `-`, `*`, `/`, `%`
- Comparison operators: `=`, `!=`, `>`, `<`, `>=`, `<=`
- Logical operators: `AND`, `OR`, `NOT`
- Special operators: `BETWEEN`, `IN`, `LIKE`, `IS NULL`

---

### 7. 📊 Aggregate Functions
- `COUNT()` — Counting rows
- `SUM()` — Totalling numeric values
- `AVG()` — Calculating averages
- `MIN()` / `MAX()` — Finding extremes
- Using aggregates with `GROUP BY` and `HAVING`

---

### 8. 🔤 SQL String Functions
- `LENGTH()`, `UPPER()`, `LOWER()`
- `TRIM()`, `LTRIM()`, `RTRIM()`
- `SUBSTRING()`, `POSITION()`
- `CONCAT()`, `||` operator
- `REPLACE()`, `REVERSE()`

---

### 9. 🔀 CASE in SQL
- `CASE WHEN ... THEN ... ELSE ... END` syntax
- Simple vs. searched CASE expressions
- Using CASE inside `SELECT`, `ORDER BY`, and `WHERE`
- Real-world use cases: categorization, conditional labels

---

### 10. 🛠️ ALTER in SQL
- `ALTER TABLE` — Modifying table structure
- Adding and dropping columns
- Changing column data types
- Renaming tables and columns
- Setting/dropping constraints post-creation

---

### 11. 🔗 Foreign Key in SQL
- What is referential integrity?
- Defining `FOREIGN KEY` constraints
- Parent-child table relationships
- `ON DELETE CASCADE` / `ON DELETE SET NULL`
- Real-world relationship modeling

---

### 12. 🤝 INNER JOIN & FULL JOIN
- `INNER JOIN` — Matching rows from both tables
- `FULL OUTER JOIN` — All rows from both sides
- Handling NULLs in full joins
- Joining multiple tables
- Using aliases for cleaner queries

---

### 13. ⬅️➡️ LEFT JOIN & RIGHT JOIN
- `LEFT JOIN` — All rows from the left table
- `RIGHT JOIN` — All rows from the right table
- Difference between LEFT and RIGHT joins
- Filtering joined results with `WHERE`
- Practical use cases

---

### 14. 🧩 Basic Projects in SQL
Hands-on mini projects applying all concepts:

- **Employee Management System** — CRUD + Constraints + Joins
- **E-Commerce Orders DB** — Foreign Keys + Aggregates + Case
- **Student Grade Tracker** — Grouping + String Functions + Case
- **Inventory System** — Alter + Constraints + Operators

---

## 🛠️ Tools & Setup

| Tool | Purpose |
|------|---------|
| PostgreSQL 16 | Database engine |
| pgAdmin 4 | GUI client |
| psql | Command-line interface |
| VS Code | Writing and organizing scripts |

---

## 🏁 Getting Started

1. Install [PostgreSQL](https://www.postgresql.org/download/)
2. Clone this repo:
   ```bash
   git clone https://github.com/yourusername/postgresql-learning.git
   cd postgresql-learning
   ```
3. Open psql and connect:
   ```bash
   psql -U postgres
   ```
4. Navigate to any topic folder and run the `.sql` files:
   ```bash
   \i 'path/to/file.sql'
   ```

---

## 📈 Progress

| Topic | Status |
|-------|--------|
| Introduction to SQL | ✅ Done |
| Data Types | ✅ Done |
| CRUD Operations | ✅ Done |
| Constraints | ✅ Done |
| Clauses | ✅ Done |
| Operators | ✅ Done |
| Aggregate Functions | ✅ Done |
| SQL String Functions | ✅ Done |
| CASE in SQL | ✅ Done |
| ALTER in SQL | ✅ Done |
| Foreign Key | ✅ Done |
| INNER & FULL JOIN | ✅ Done |
| LEFT & RIGHT JOIN | ✅ Done |
| Basic Projects | ✅ Done |

---

## 🙋‍♂️ About

This repository documents my self-paced journey into PostgreSQL and relational databases. Each folder contains `.sql` scripts with examples, comments, and practice exercises.

Feel free to explore, fork, or suggest improvements!

---

## 📬 Connect

[![GitHub](https://img.shields.io/badge/GitHub-yourusername-181717?style=flat&logo=github)](https://github.com/yourusername)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=flat&logo=linkedin)](https://linkedin.com/in/yourprofile)

---

> *"The best way to learn SQL is to write SQL."* 🐘
