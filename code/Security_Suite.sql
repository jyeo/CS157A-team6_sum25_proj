CREATE TABLE Security_Suite (
    user_ID INT PRIMARY KEY,
    birthday DATE,
    address VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    salt VARCHAR(255) NOT NULL,
    rw_ability ENUM('read', 'write', 'read_write') DEFAULT 'read',
    FOREIGN KEY(user_ID) REFERENCES User(user_ID)
);