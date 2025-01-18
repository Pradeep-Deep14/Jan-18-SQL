CREATE TABLE sales (
         sale_id INT, 
         product_id INT, 
         sale_date DATE, 
         sales_amount DECIMAL(10, 2), 
         customer_id INT
     );
     INSERT INTO sales VALUES 
         (1, 1, '2024-01-10', 50000.00, 1001), 
         (2, 1, '2024-01-15', 70000.00, 1001), 
         (3, 2, '2024-02-20', 30000.00, 1002), 
         (4, 1, '2024-02-25', 20000.00, 1001);

SELECT * FROM SALES


/*
Calculate the running total of sales by customer.
*/

SELECT CUSTOMER_ID,
       SALE_DATE,
       SALES_AMOUNT,
       SUM(SALES_AMOUNT) OVER (PARTITION BY CUSTOMER_ID ORDER BY SALE_DATE) AS RUNNING_TOTAL_SALES
FROM SALES
ORDER BY CUSTOMER_ID, SALE_DATE;
