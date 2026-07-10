
-- DROP TABLES IF THEY ALREADY EXIST TO PREVENT CONFLICTS
DROP TABLE IF EXISTS Bookings;
DROP TABLE IF EXISTS Matches;
DROP TABLE IF EXISTS Users;



CREATE TABLE users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(20) NOT NULL
        CHECK (role IN ('Football Fan', 'Ticket Manager')),
    phone_number VARCHAR(20)
);



SELECT *
FROM information_schema.columns
WHERE table_name = 'users';


\d users