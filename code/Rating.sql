USE Paw_Caelum;
CREATE TABLE OWNER_WALKER_RATING(
    rating_ID INT AUTO_INCREMENT PRIMARY KEY,
    Owner_ID INT NOT NULL,
    Walker_ID INT NOT NULL,
    Comment TEXT,
    RatingScore INT CHECK(RatingScore >= 1 and RatingScore <= 5),
    FOREIGN KEY(Owner_ID) REFERENCES User(User_ID),
    FOREIGN KEY(Walker_ID) REFERENCES User(User_ID)
);
INSERT INTO OWNER_WALKER_RATING (Owner_ID, Walker_ID, Comment, RatingScore)
VALUES
(1, 2, 'Very friendly and on time!', 5),
(3, 2, 'Good walk but arrived late.', 4),
(5, 4, 'Took great care of my dog.', 5),
(7, 8, 'Dog came back happy and tired.', 5),
(9, 6, 'Responsive and reliable.', 4),
(11, 4, 'Did not follow instructions properly.', 2),
(13, 10, 'Great communication and updates.', 5),
(15, 16, 'My dog didn’t seem happy after walk.', 3),
(17, 18, 'Very patient with my anxious dog.', 5),
(19, 12, 'Did a decent job overall.', 4);
SELECT * FROM OWNER_WALKER_RATING;