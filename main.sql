
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount INT,
    product_id VARCHAR(10)
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2024-01-15', 200, 'P001'),
(1002, '2024-01-18', 450, 'P002'),
(1003, '2024-02-10', 300, 'P003'),
(1004, '2024-02-18', 150, 'P001'),
(1005, '2024-03-05', 500, 'P004'),
(1006, '2024-03-15', 250, 'P002'),
(1007, '2024-04-01', 400, 'P005'),
(1008, '2024-04-20', 500, 'P006'),
(1009, '2024-05-07', 420, 'P003'),
(1010, '2024-05-25', 400, 'P002'),
(1011, '2024-06-11', 480, 'P001'),
(1012, '2024-06-29', 500, 'P004');

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS total_orders
    
FROM
  online_sales
    
GROUP BY
  EXTRACT(YEAR FROM order_date),
  EXTRACT(MONTH FROM order_date)
    
ORDER BY
  year, month;

