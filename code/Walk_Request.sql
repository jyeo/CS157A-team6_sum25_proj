CREATE TABLE Walk_Request(
    request_ID INT AUTO_INCREMENT PRIMARY KEY,
    owner_ID INT NOT NULL,
    dog_ID INT NOT NULL,
    walker_ID INT,
    status ENUM('in progress', 'accepted', 'cancelled', 'completed') DEFAULT 'pending',
    price DECIMAL(10,2),
    duration INT,
    note TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(owner_ID) REFERENCES User(ID),
    FOREIGN KEY(dog_ID) REFERENCES Dogs(dog_ID),
    FOREIGN KEY(walker_ID) REFERENCES User(ID)
);
