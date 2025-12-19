-- G3_23BCS101713_Ruchi_Sharma_SESSION4
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');

CREATE TABLE Subjects (
    subject_name VARCHAR(50) PRIMARY KEY
);

INSERT INTO Subjects (subject_name) VALUES
('Math'),
('Physics'),
('Programming');

CREATE TABLE Examinations (
    student_id INT,
    subject_name VARCHAR(50)
);

INSERT INTO Examinations (student_id, subject_name) VALUES
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');

select 
    st.student_id,
    st.student_name,
    sb.subject_name,
    count(e.student_id) as attended_exams
from Students st
cross join Subjects sb
left join Examinations e
on st.student_id = e.student_id
and sb.subject_name = e.subject_name
group by st.student_id, st.student_name, sb.subject_name
order by st.student_id, sb.subject_name;

