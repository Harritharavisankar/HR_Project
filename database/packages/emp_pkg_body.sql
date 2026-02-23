CREATE OR REPLACE PACKAGE BODY emp_pkg AS

    PROCEDURE add_employee(
        p_employee_id   NUMBER,
        p_first_name    VARCHAR2,
        p_last_name     VARCHAR2,
        p_email         VARCHAR2,
        p_salary        NUMBER,
        p_department_id NUMBER
    ) IS
    BEGIN
        INSERT INTO employees (
            employee_id,
            first_name,
            last_name,
            email,
            hire_date,
            salary,
            department_id
        ) VALUES (
            p_employee_id,
            p_first_name,
            p_last_name,
            p_email,
            SYSDATE,
            p_salary,
            p_department_id
        );

        COMMIT;
    END add_employee;


    PROCEDURE get_employee(
        p_employee_id NUMBER
    ) IS
        v_employee employees%ROWTYPE;
    BEGIN
        SELECT *
        INTO v_employee
        FROM employees
        WHERE employee_id = p_employee_id;

        DBMS_OUTPUT.PUT_LINE('Employee: ' || v_employee.first_name);
    END get_employee;

END emp_pkg;
/