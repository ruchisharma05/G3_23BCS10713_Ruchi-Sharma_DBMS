-- G3_23BCS101713_Ruchi_Sharma_SESSION2
CREATE TABLE person (
    id INT PRIMARY KEY,
    email VARCHAR(100)
);

INSERT INTO person (id, email) VALUES
(1, 'john@example.com'),
(2, 'bob@example.com'),
(3, 'john@example.com');

DELETE FROM PERSON
WHERE ID IN(
SELECT P1.ID  FROM Person as p1
JOIN PERSON AS P2
ON P1.ID>P2.ID AND P1.EMAIL=P2.EMAIL
);