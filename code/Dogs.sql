USE Paw_Caelum;
CREATE TABLE Dogs(
    Dog_Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Breed VARCHAR(50),
    Size ENUM('SMALL', 'MEDIUM', 'LARGE'),
    Age INT,
    Basic_info VARCHAR(200),
    Photo VARCHAR(500),
    Owner_Id INT NOT NULL,
    FOREIGN KEY (Owner_Id) REFERENCES User(User_id)

);
INSERT INTO Dogs(Name, Breed, Size, Age, Basic_info, Photo, Owner_id) VALUES
('Buddy', 'Golden Retriever', 'LARGE', 5, 'Loves playing fetch and swimming.', 'code/images/p1.jpg', 1),
('Luna', 'Corgi', 'SMALL', 2, 'Very energetic and smart.', 'code/images/p2.jpg', 3),
('Bella', 'English Cocker Spaniel', 'MEDIUM', 3, 'Enjoys naps and cuddles.', 'code/images/p3.jpg', 5),
('Charlie', 'Jack Russell Terrier', 'MEDIUM', 4, 'Curious and always sniffing around.', 'code/images/p4.jpg', 7),
('Lucy', 'Samoyed', 'MEDIUM', 2, 'Highly intelligent and easily trained.', 'code/images/p5.jpg', 9),
('Max', 'White Swiss Shepherd', 'LARGE', 5, 'Gentle giant, loves kids.', 'code/images/p6.jpg', 11),
('Daisy', 'Cavalier King Charles Spaniel', 'SMALL', 3, 'Sweet and friendly lap dog.', 'code/images/p7.jpg', 13),
('Pumpkin', 'Pomeranian', 'SMALL', 1, 'Fluffy and energetic little companion.', 'code/images/p8.jpg', 15),
('Buster', 'Beagle Mix', 'SMALL', 1, 'Playful and curious puppy still growing', 'code/images/p9.jpg', 17),
('Molly', 'Alaskan Malamute', 'LARGE', 5, 'Strong and loyal, loves the cold.', 'code/images/p10.jpg', 19);
SELECT * FROM Dogs;