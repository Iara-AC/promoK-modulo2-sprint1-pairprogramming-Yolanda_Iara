CREATE SCHEMA northwind;

SELECT employee_id, first_name, last_name
	FROM employees;
    
SELECT product_name, unit_price AS price
	FROM products


SELECT product_name, unit_price AS price
	FROM products
    WHERE unit_price is NULL;
    
    
    SELECT product_id AS id, product_name, unit_price AS price
	FROM products
    WHERE unit_price < 15
    AND product_id < 20;
    
    SELECT product_id AS id, product_name, unit_price AS price
	FROM products
    WHERE NOT unit_price < 15
    AND NOT product_id < 20;
    
    SELECT customer_id
    FROM orders;
    
        SELECT *
		FROM customers
        WHERE customer_id in (
        SELECT customer_id
		FROM orders);
        
        
        SELECT DISTINCT country
		FROM customers
        WHERE customer_id in (
        SELECT customer_id
		FROM orders)
        ORDER BY country ASC;
        
   
    
    
    