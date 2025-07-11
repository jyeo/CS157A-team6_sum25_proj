USE Paw_Caelum;
CREATE TABLE OWNER (
    Owner_id INT PRIMARY KEY,
    Emergency_contact VARCHAR(45),
    FOREIGN KEY (Owner_id) REFERENCES User(User_id)
);
INSERT INTO OWNER (Owner_id, Emergency_contact)
VALUES
(1, '408-112-3333'),
(3, '408-113-9966'),
(5, '408-113-9988'),
(7, '408-115-9966'),
(9, '408-113-1000'),
(11, '408-113-2233'),
(13, '408-119-7755'),
(15, '408-773-9906'),
(17, '408-113-9876'),
(19, '408-156-9012');

SELECT * FROM OWNER;

