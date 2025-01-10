CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary NUMERIC(10, 2)
);

INSERT INTO employees (name, position, salary)
VALUES
('Alice', 'Manager', 75000),
('Bob', 'Developer', 60000),
('Charlie', 'Designer', 50000);

SELECT * FROM employees;
UPDATE employees
SET salary = 80000
WHERE name = 'Alice';

DELETE FROM employees
WHERE name = 'Charlie';











