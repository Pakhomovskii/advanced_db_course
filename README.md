### Final assessment for M605 Advanced Databases module

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14-orange.svg)](https://www.postgresql.org/)

This project focuses on the design and normalization of a database for an online shop. The goal is to analyze the requirements provided by ABC Company, create the database schema, populate it with test data, and demonstrate its functionality with SQL queries. While the final application may use an ORM (Object-Relational Mapping) system, this project will focus exclusively on SQL.

- **init_db.sql** script with SQL commands to create DB, tables, roles, etc.

- **insert.sql** insertion sample data in DB

- **reporting.sql** DML commands to see specific reports 

### ER Diagram
![image](https://github.com/Pakhomovskii/gisma-advanced-db/assets/69305661/6a33e347-ae2f-4b06-b0d2-b8384069c2e0)


you can try it with:
```bash
psql -h 34.133.15.56 -U readonly_user -d online_shop
```
password: 12345
