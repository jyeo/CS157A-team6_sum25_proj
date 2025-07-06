CREATE TABLE COMMUNICATIONS(
    Communication_ID INT AUTO_INCREMENT PRIMARY KEY,
    Content TEXT NOT NULL,
    Type ENUM('TEXT', 'IMAGE','VIDEO') DEFAULT 'TEXT',
    Text_Status ENUM('sent', 'delivered', 'read') DEFAULT 'sent',
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Sender INT NOT NULL,
    Receiver INT NOT NULL,
    FOREIGN KEY(Sender) REFERENCES User(User_id),
    FOREIGN KEY(Receiver) REFERENCES User(User_id)
);
INSERT INTO COMMUNICATIONS(Content, Type, Text_Status, sent_at, Sender, Receiver) VALUES
('Hi, are you available to walk my dog tomorrow?', 'TEXT', 101, 201, 'sent'),
('Yes, what time are you thinking?', 'TEXT', 201, 101, 'sent'),
('8 AM would be great!', 'TEXT', 101, 201, 'delivered'),
('Sure, I will be there at 8.', 'TEXT', 201, 101, 'read'),
('Sending you a picture of Buddy!', 'TEXT', 101, 201, 'sent'),
('code/images/playing.jpg', 'IMAGE', 101, 201, 'delivered'),
('Looks happy! I''ll take good care of him.', 'TEXT', 201, 101, 'read'),
('Can you send me a quick video of the walk?', 'TEXT', 101, 201, 'sent'),
('code/images/happyplaying.mp4', 'VIDEO', 201, 101, 'delivered'),
('Thanks! Looks like he had fun.', 'TEXT', 101, 201, 'read');