-- Employees of a company
CREATE TABLE employees (
    employee_id   SERIAL PRIMARY KEY,
    full_name     VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    hire_date     DATE NOT NULL,
    base_salary   NUMERIC(10, 2) NOT NULL
);

-- Departments
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Sales made by employees
CREATE TABLE sales (
    sale_id      SERIAL PRIMARY KEY,
    employee_id  INT NOT NULL,
    sale_amount  NUMERIC(10, 2) NOT NULL,
    sale_date    DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO departments (department_name) VALUES
('Sales'),
('Marketing'),
('Engineering');

INSERT INTO employees (full_name, department_id, hire_date, base_salary) VALUES
('Alice Rossi', 1, '2022-01-10', 45000),
('Marco Bianchi', 1, '2021-05-03', 50000),
('Luca Verdi', 2, '2020-09-15', 48000),
('Giulia Neri', 3, '2019-03-20', 60000);

INSERT INTO sales (employee_id, sale_amount, sale_date) VALUES
(1, 1000, '2024-01-10'),
(1, 1500, '2024-02-05'),
(1, 500,  '2024-02-20'),
(2, 2000, '2024-01-15'),
(2, 800,  '2024-02-10'),
(3, 1200, '2024-01-25'),
(3, 700,  '2024-02-14'),
(4, 300,  '2024-02-18');
