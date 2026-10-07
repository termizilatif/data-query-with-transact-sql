# 📘 Overview

This repository is part of the **Data Query with Transact-SQL** course, designed to help beginners understand the fundamentals of SQL. Topics include both querying and modifying data in relational databases across Microsoft SQL Server, Azure SQL Database, Azure Synapse Analytics and Microsoft Fabric, covering SQL basics, filtering, joins, functions, aggregation, subqueries, data modification, error handling and table creation.

It includes 11 hands-on lab exercises and a 21-question final exam for reference and revision. The **Lab exercises** and **Final exam questions** below are my own summaries, shown as a *topic* and a *scenario* rather than the original wording. Solutions are in `lab_solutions.csv` and as one script per exercise (`01_…` to `11_…`) under the `exercises` folder.

# 📂 Repository Contents

- `exercises` – Hands-on labs with suggested answers.
  - `01_…` to `11_…` – one script per exercise
  - `lab_solutions.csv` – all tasks and solutions in one table
- `final-exam` – Sample final exam questions with answers.
  - `Q01.md` to `Q21.md` – one question per file, with answer and explanation
  - `exam_answers.csv` – answer key with topic and explanation

## Lab exercises

| # | Exercise | Topic |
|---|---|---|
| 01 | [Retrieving Customer Data](exercises/01_retrieving_customer_data.sql) | SELECT basics |
| 02 | [Retrieving Transportation Report Data](exercises/02_transportation_report_data.sql) | DISTINCT |
| 03 | [Generating Invoice Reports](exercises/03_invoice_reports.sql) | JOIN |
| 04 | [Retrieving Customer Addresses](exercises/04_customer_addresses.sql) | Multi-table JOIN, literal column |
| 05 | [Retrieving Product Information](exercises/05_product_information.sql) | Scalar functions |
| 06 | [Retrieving Product Price Information](exercises/06_product_price_information.sql) | Subqueries |
| 07 | [Retrieving Product Model Information](exercises/07_product_model_information.sql) | JOIN with view |
| 08 | [Retrieving Regional Sales Totals](exercises/08_regional_sales_totals.sql) | GROUP BY ROLLUP |
| 09 | [Inserting Products](exercises/09_insert_product.sql) | INSERT, SCOPE_IDENTITY |
| 10 | [Inserting an Order Header](exercises/10_insert_order_header.sql) | Variables, INSERT |
| 11 | [Logging Errors](exercises/11_delete_order_with_error.sql) | THROW, error handling |

## Final exam questions

| Question | Topic | Scenario |
|---|---|---|
| [Q01](final-exam/Q01.md) | Column aliases | Return Name as ProductName |
| [Q02](final-exam/Q02.md) | Calculated columns | Return OrderNumber and Subtotal + Tax as Total |
| [Q03](final-exam/Q03.md) | Data type conversion | Multiply Quantity by Price stored as varchar |
| [Q04](final-exam/Q04.md) | NULL handling | NULLIF with string concatenation |
| [Q05](final-exam/Q05.md) | DISTINCT | Unique City/CountryRegion pairs |
| [Q06](final-exam/Q06.md) | ORDER BY | Category ascending, price descending |
| [Q07](final-exam/Q07.md) | Date filtering | First calendar quarter of 2015 |
| [Q08](final-exam/Q08.md) | Outer joins | Include products never ordered |
| [Q09](final-exam/Q09.md) | Set operators | Customers with no orders |
| [Q10](final-exam/Q10.md) | Outer joins | All promotions and all products |
| [Q11](final-exam/Q11.md) | GROUP BY | Last sold date per product |
| [Q12](final-exam/Q12.md) | Conditional logic | IIF / ISNUMERIC / TRY_CAST with 'X21' |
| [Q13](final-exam/Q13.md) | HAVING | Lowest sale above overall average |
| [Q14](final-exam/Q14.md) | Correlated subquery | Last order date per customer |
| [Q15](final-exam/Q15.md) | Batches and temp tables | Table variable out of scope after GO |
| [Q16](final-exam/Q16.md) | Common table expressions | Use the CTE to total revenue per customer |
| [Q17](final-exam/Q17.md) | GROUPING SETS | (CountryRegion), (CountryRegion, City), () |
| [Q18](final-exam/Q18.md) | UNPIVOT | Turn region columns into rows |
| [Q19](final-exam/Q19.md) | INSERT | Insert a customer with a default Active value |
| [Q20](final-exam/Q20.md) | UPDATE | Raise price 10% for non-discontinued products |
| [Q21](final-exam/Q21.md) | Error handling | Roll back and re-throw in CATCH |

# 🚀 Getting Started

Clone the repository:

```bash
git clone https://github.com/termizilatif/data-query-with-transact-sql.git
cd data-query-with-transact-sql
```

**Prerequisites**

- A SQL Server, Azure SQL Database or Fabric SQL environment
- A client such as SQL Server Management Studio, Azure Data Studio or VS Code with the MSSQL extension
- The **AdventureWorksLT** sample database (the labs use the `SalesLT` schema)

**How to use**

1. Open the exercise in `exercises/` and try to write the query yourself first.
2. Run your query, then compare it with the script in `exercises/sql/`.
3. Work through the questions in `final-exam/`, then check the answer at the bottom of each file.

> Exercises 09–11 modify data. Run them against a disposable copy of the database.

# 🧠 Skills Covered

Querying, filtering, joins, aggregation, subqueries and CTEs, data modification, and error handling in T-SQL.

# 📄 License

Original code, solutions and notes in this repository are released under the [MIT License](LICENSE).

Course materials and exam questions remain the property of their respective owners. The MIT License does not apply to them.
