SELECT 
    e.employee_id, 
    e.full_name, 
    SUM(s.sale_amount) AS total_sales
FROM employees e
JOIN sales s 
    ON e.employee_id = s.employee_id
GROUP BY 
    e.employee_id, 
    e.full_name
ORDER BY 
    total_sales DESC;
