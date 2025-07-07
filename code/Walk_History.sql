/*
@DEV_NOTES:
--converts from meters to kms then miles before refresh
--some code here DELIMITER?
:*/

CREATE TABLE Walk_History (
    history_ID INT AUTO_INCREMENT PRIMARY KEY,
    dog_ID INT NOT NULL,
    walker_ID INT NOT NULL,
    completed_at DATETIME,
    distance_meters DECIMAL(6,2),
    distance_km DECIMAL(6,2),
    distance_miles DECIMAL(6,2),
    FOREIGN KEY(dog_ID) REFERENCES Dogs(dog_ID),
    FOREIGN KEY(walker_ID) REFERENCES User(ID)
);