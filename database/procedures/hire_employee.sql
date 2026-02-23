CREATE OR REPLACE PROCEDURE hire_employee (
    p_employee_id   NUMBER,
    p_first_name    VARCHAR2,
    p_last_name     VARCHAR2,
    p_email         VARCHAR2,
    p_salary        NUMBER,
    p_department_id NUMBER
) AS
BEGIN
    emp_pkg.add_employee(
        p_employee_id,
        p_first_name,
        p_last_name,
        p_email,
        p_salary,
        p_department_id
    );
END hire_employee;
/