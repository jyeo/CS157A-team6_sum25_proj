USE Paw_Caelum;
CREATE TABLE COMMUNICATIONS(
    Communication_ID INT AUTO_INCREMENT PRIMARY KEY,
    Content TEXT NOT NULL,
    Type ENUM('TEXT', 'IMAGE','VIDEO') DEFAULT 'TEXT',
    Text_Status ENUM('sent', 'delivered', 'read') DEFAULT 'sent',
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Sender INT NOT NULL,
    Receiver INT NOT NULL,
    FOREIGN KEY(Sender) REFERENCES User(User_ID),
    FOREIGN KEY(Receiver) REFERENCES User(User_id)
);
INSERT INTO COMMUNICATIONS(Content, Type, Text_Status, Sender, Receiver) VALUES
('Hi, are you available to walk my dog tomorrow?', 'TEXT', 'sent', 1, 2),
('Yes, what time are you thinking?', 'TEXT', 'sent', 2, 1),
('8 AM would be great!', 'TEXT', 'delivered', 1, 2),
('Sure, I will be there at 8.', 'TEXT', 'read', 2, 1),
('Sending you a picture of Buddy!', 'TEXT', 'sent', 1, 2),
('code/images/swimming.jpg', 'IMAGE', 'delivered', 1, 2),
('Looks happy! I''ll take good care of him.', 'TEXT', 'read', 2, 1),
('Can you send me a quick video of the walk?', 'TEXT', 'sent', 1, 2),
('code/images/happyplaying.mp4', 'VIDEO', 'delivered', 2, 1),
('Thanks! Looks like he had fun.', 'TEXT', 'read', 1, 2);