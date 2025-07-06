CREATE TABLE OWNER_WALKER_RATING(
    rating_ID INT AUTO_INCREMENT PRIMARY KEY,
    Owner_id INT NOT NULL,
    Walker_id INT NOT NULL,
    Comment TEXT,
    RatingScore INT CHECK(RatingScore >= 1 and RatingScore <= 5),
    FOREIGN KEY(Owner_id) REFERENCES User(User_id),
    FOREIGN KEY(Walker_id) REFERENCES User(User_id)
);
INSERT INTO OWNER_WALKER_RATING (Owner_id, Walker_id, Comment, RatingScore)
VALUES
(101, 201, 'Very friendly and on time!', 5),
(102, 202, 'Good walk but arrived late.', 4),
(103, 201, 'Took great care of my dog.', 5),
(104, 203, 'Dog came back happy and tired.', 5),
(105, 204, 'Responsive and reliable.', 4),
(106, 202, 'Did not follow instructions properly.', 2),
(107, 205, 'Great communication and updates.', 5),
(108, 204, 'My dog didn’t seem happy after walk.', 3),
(109, 203, 'Very patient with my anxious dog.', 5),
(110, 205, 'Did a decent job overall.', 4);