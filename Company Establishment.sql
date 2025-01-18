CREATE TABLE companies (
         company_id INT PRIMARY KEY, 
         company_name VARCHAR(100), 
         established_year INT
     );
     INSERT INTO companies VALUES 
         (1, 'Ola', 2010), 
         (2, 'Zomato', 2010), 
         (3, 'Paytm', 2014), 
         (4, 'Flipkart', 2007);

SELECT * FROM COMPANIES

/*
Get details of all companies established after January 1, 2010.
*/

SELECT COMPANY_NAME
FROM COMPANIES
WHERE ESTABLISHED_YEAR > '2010'