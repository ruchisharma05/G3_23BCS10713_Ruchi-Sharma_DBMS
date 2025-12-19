-- G3_23BCS101713_Ruchi_Sharma_SESSION5
--Q1
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);


INSERT INTO Departments (DeptID, DeptName, Location) VALUES
(10, 'HR', 'Delhi'),
(20, 'IT', 'Mumbai'),
(30, 'Finance', 'Pune'),
(50, 'Marketing', 'Chennai');

INSERT INTO Employees (EmpID, EmpName, DeptID, Salary) VALUES
(1, 'Akash', 10, 50000),
(2, 'Nisha', 20, 60000),
(4, 'Simran', 30, 70000),
(5, 'Meena', 30, 55000);


Approach 1:

SELECT d.deptname AS department_name, COUNT(e.empid) AS total_employees,
(AVG(e.salary)::Numeric(20)) AS average_salary,  
CASE WHEN COUNT(e.empid) = 0 THEN 'No Employees'
WHEN AVG(e.salary) >= 60000 THEN 'High Avg'
WHEN AVG(e.salary) BETWEEN 50000 AND 59999 THEN 'Medium Avg'
ELSE 'Low Avg'
END AS salary_category
FROM Departments d
LEFT JOIN Employees e 
ON d.deptid = e.deptid
GROUP BY d.deptid, d.deptname

--Q2
CREATE TABLE Triangle (
    x INT,
    y INT,
    z INT,
    PRIMARY KEY (x, y, z)
);

INSERT INTO Triangle (x, y, z) VALUES (13, 15, 30),
(10, 20, 15);

SELECT x, y, z,
CASE WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
ELSE 'No'END AS triangle
FROM Triangle;
