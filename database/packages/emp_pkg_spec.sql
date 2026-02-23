CREATE OR REPLACE PACKAGE emp_pkg AS

    PROCEDURE add_employee(
        p_employee_id   NUMBER,
        p_first_name    VARCHAR2,
        p_last_name     VARCHAR2,
        p_email         VARCHAR2,
        p_salary        NUMBER,
        p_department_id NUMBER
    );

    PROCEDURE get_employee(
        p_employee_id NUMBER
    );

END emp_pkg;
/