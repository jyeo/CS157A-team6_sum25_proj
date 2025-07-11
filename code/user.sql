USE Paw_Caelum;
CREATE TABLE User (
    User_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birthday DATE,
    email VARCHAR(255) UNIQUE,
    address VARCHAR(255),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Phone VARCHAR(45)
);
INSERT INTO User (name, birthday, email, address, Phone)
VALUES
('Alice Johnson', '1990-05-12', 'alice.johnson@example.com', '123 Maple Street', '408-123-4567'),
('Bob Smith', '1985-09-23', 'bob.smith@example.com', '456 Oak Avenue', '408-123-4534'),
('Charlie Nguyen', '1992-12-01', 'charlie.nguyen@example.com', '789 Pine Road', '408-123-4545'),
('Diana Lee', '1994-03-14', 'diana.lee@example.com', '101 Birch Lane', '408-121-4567'),
('Ethan Brown', '1988-07-30', 'ethan.brown@example.com', '202 Cedar Street', '408-123-1567'),
('Fiona Garcia', '1995-11-18', 'fiona.garcia@example.com', '303 Spruce Boulevard', '408-123-4467'),
('George Miller', '1983-02-25', 'george.miller@example.com', '404 Willow Way', '408-123-4568'),
('Hannah Davis', '1991-06-09', 'hannah.davis@example.com', '505 Poplar Court', '408-123-4534'),
('Ian Wilson', '1987-08-17', 'ian.wilson@example.com', '606 Redwood Circle', '408-223-4567'),
('Julia Martinez', '1993-04-05', 'julia.martinez@example.com', '707 Cypress Street', '408-129-4567'),
('Kevin Hart', '1986-10-12', 'kevin.hart@example.net', '808 Aspen Drive', '408-123-4593'),
('Laura Chen', '1993-01-28', 'laura.chen@example.net', '909 Elm Street', '408-123-1122'),
('Michael Scott', '1974-03-15', 'michael.scott@example.net', '100 Pineapple Road', '408-123-8888'),
('Natalie Rivera', '1996-07-08', 'natalie.rivera@example.net', '111 Mango Street', '408-123-7878'),
('Oscar Perez', '1982-12-21', 'oscar.perez@example.net', '212 Peach Lane', '408-123-0001'),
('Priya Patel', '1991-09-17', 'priya.patel@example.net', '313 Plum Avenue', '408-123-9999'),
('Quincy Adams', '1989-11-30', 'quincy.adams@example.net', '414 Cherry Court', '408-123-3567'),
('Rachel Kim', '1997-06-05', 'rachel.kim@example.net', '515 Walnut Circle', '408-123-4848'),
('Samuel Thompson', '1990-08-19', 'samuel.thompson@example.net', '616 Chestnut Drive', '408-999-4567'),
('Tina Brooks', '1994-04-23', 'tina.brooks@example.net', '717 Pine Terrace', '408-777-4567');
SELECT * FROM User;