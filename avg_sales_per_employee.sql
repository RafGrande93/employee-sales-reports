--Avarage sales
SELECT
    e.employee_id,
    e.full_name,
    COUNT(*) AS number_of_sales,
    AVG(s.sale_amount) AS avg_sale_amount
FROM employees AS e
JOIN sales AS s
    ON s.employee_id = e.employee_id
GROUP BY
    e.employee_id,
    e.full_name
ORDER BY
    avg_sale_amount DESC;
