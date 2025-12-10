-- G3_23BCS101713_Ruchi_Sharma_SESSION1
CREATE TABLE employee (
  emp_id INT,
  emp_name VARCHAR(50),
  dept VARCHAR(30),
  salary INT
);

INSERT INTO employee VALUES
(1, 'Ruchi', 'IT', 65000),
(2, 'Kanika', 'HR', 58000),
(3, 'Rohan', 'Finance', 55000),
(4, 'Ankit', 'IT', 62000);

CREATE VIEW Employee_View AS
SELECT emp_id, emp_name, dept, salary
FROM employee;

CREATE ROLE analyst;

GRANT SELECT ON Employee_View TO analyst;
