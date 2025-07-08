USE Paw_Caelum;
CREATE TABLE Walker(
    Walker_ID INT PRIMARY KEY,
    Bio VARCHAR(255),
    Status ENUM('available', 'busy', 'inactive') DEFAULT 'available',
    Experience ENUM('beginner', 'intermediate', 'advanced') DEFAULT 'beginner',
    Zip_Code VARCHAR(15) NOT NULL,
    FOREIGN KEY(Walker_ID) REFERENCES User(User_ID)
);
INSERT INTO Walker (Walker_ID, Bio, Status, Experience, Zip_Code)
VALUES
(2, 'Friendly and reliable walker.', 'available', 'beginner', '95112'),
(4, 'Enjoys running with high-energy dogs.', 'busy', 'intermediate', '94085'),
(6, 'Specializes in large and active breeds.', 'available', 'advanced', '95050'),
(8, 'Loves spending weekends at the dog park.', 'available', 'beginner', '94536'),
(10, 'Expert at handling multiple dogs at once.', 'busy', 'advanced', '95129'),
(12, 'Patient with shy and nervous dogs.', 'available', 'intermediate', '94043'),
(14, 'Enjoys long hikes with canine companions.', 'inactive', 'intermediate', '95014'),
(16, 'Part-time dog walker with flexible hours.', 'available', 'beginner', '94301'),
(18, 'Volunteered at local animal shelters.', 'busy', 'intermediate', '94086'),
(20, 'Experienced walker in urban environments.', 'available', 'advanced', '94538');
SELECT * FROM Walker;