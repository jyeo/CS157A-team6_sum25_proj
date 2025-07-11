/*
@DEV_NOTES:
--converts from meters to kms then miles before refresh
--some code here DELIMITER?
:*/

CREATE TABLE Walk_History (
    Walkhistory_ID INT AUTO_INCREMENT PRIMARY KEY,
    Dog_ID INT NOT NULL,
    Walker_ID INT NOT NULL,
    completed_at DATETIME,
    distance_meters DECIMAL(6,2),
    distance_km DECIMAL(6,2),
    distance_miles DECIMAL(6,2),
    FOREIGN KEY(Dog_ID) REFERENCES Dogs(Dog_ID),
    FOREIGN KEY(Walker_ID) REFERENCES User(User_ID)
);