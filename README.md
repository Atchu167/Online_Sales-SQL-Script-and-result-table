# Online_Sales-SQL-Script-and-result-table
TASK 6-Sales Trend Analysis Using Aggregations

# 📊 Sales Trend Analysis using SQL

This project demonstrates how to analyze monthly sales performance using SQL. It uses a sample dataset containing order data for six months and performs trend analysis on revenue and order volume.

Project Files:
File Name:
Description:                        
`online_sales_data.xlsx`- Dataset file containing order records
`Main.sql` - SQL script to create the table, insert data, and run queries. 
`Screenshot(2722).png` - Output screenshot showing the result of the SQL query. 

Objective:
- Load sales data into a SQL database.
- Perform monthly aggregation to compute:
  - Total Revenue
  - Total Orders
- Visualize and validate query output.

SQL Features Used:
- `CREATE TABLE`
- `INSERT INTO`
- `EXTRACT(YEAR/MONTH)` (or `MONTH()`, `YEAR()` in MySQL)
- `GROUP BY` and `ORDER BY`
- `SUM()` and `COUNT()` aggregation functions

Example Query:
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(order_id) AS total_orders
FROM
  online_sales
GROUP BY
  EXTRACT(YEAR FROM order_date),
  EXTRACT(MONTH FROM order_date)
ORDER BY
  year, month;

