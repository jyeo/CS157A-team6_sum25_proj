CREATE TABLE Walk_Request(
    Walkrequest_ID INT AUTO_INCREMENT PRIMARY KEY,
    Owner_ID INT NOT NULL,
    Dog_ID INT NOT NULL,
    Walker_ID INT,
    status ENUM('in progress', 'accepted', 'cancelled', 'completed') DEFAULT 'pending',
    price DECIMAL(10,2),
    duration INT,
    note TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(Owner_ID) REFERENCES User(User_ID),
    FOREIGN KEY(Dog_ID) REFERENCES Dogs(Dog_ID),
    FOREIGN KEY(Walker_ID) REFERENCES User(User_ID)
);
