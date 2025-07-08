USE Paw_Caelum;
CREATE TABLE FAVORITE(
    Dog_ID INT NOT NULL,
    Walker_ID INT NOT NULL,
    Location TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(Dog_ID, Walker_ID),
    FOREIGN KEY(Walker_ID) REFERENCES User(User_ID)
);
INSERT INTO FAVORITE (Dog_ID, Walker_ID) VALUES
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
SELECT d.Dog_ID, d.Name AS Dog_Name, w.Walker_ID, u.name AS Walker_Name
FROM Paw_Caelum.Dogs as d, Paw_Caelum.Walker as w, Paw_Caelum.FAVORITE as f, Paw_Caelum.User as u
WHERE d.Dog_ID = f.Dog_ID AND
w.Walker_ID = f.Walker_ID AND
f.Walker_ID = u.User_ID;