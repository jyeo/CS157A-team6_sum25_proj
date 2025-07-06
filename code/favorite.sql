CREATE TABLE FAVORITE(
    Dog_id INT NOT NULL,
    Walker_id INT NOT NULL,
    Location TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(Dog_id, Walker_id),
    FOREIGN KEY(Owner_id) REFERENCES User(User_id),
    FOREIGN KEY(Walker_id) REFERENCES User(User_id)
);
INSERT INTO FAVORITE (Dog_id, Walker_id) VALUES
(1, 201),
(2, 201),
(3, 202),
(4, 202),
(5, 203),
(6, 203),
(7, 204),
(8, 204),
(9, 205),
(10, 205);