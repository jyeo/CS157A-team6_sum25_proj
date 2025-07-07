USE Paw_Caelum;
CREATE TABLE FAVORITE(
    Dog_id INT NOT NULL,
    Walker_id INT NOT NULL,
    Location TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(Dog_id, Walker_id),
    FOREIGN KEY(Walker_id) REFERENCES User(User_id)
);
INSERT INTO FAVORITE (Dog_id, Walker_id) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 6),
(5, 12),
(6, 12),
(7, 4),
(8, 8),
(9, 8),
(10, 6);
SELECT d.Dog_id, d.Name AS Dog_Name, w.Walker_id, u.name AS Walker_Name
FROM Paw_Caelum.Dogs as d, Paw_Caelum.Walker as w, Paw_Caelum.FAVORITE as f, Paw_Caelum.User as u
WHERE d.Dog_id = f.Dog_id AND
w.Walker_id = f.Walker_id AND
f.Walker_id = u.User_id;