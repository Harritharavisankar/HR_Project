-- View all employees
SELECT * FROM employees;

-- Increase salary
UPDATE employees
SET salary = salary + 1000
WHERE department_id = 10;

COMMIT;