/*
make-tables.sql - Create all tables and set constraints.
Joseph Furmanowski, CS-432, Spring 2023
*/

-- Ensure that the tables do not exist already.
DROP TABLE Users CASCADE CONSTRAINTS;
DROP TABLE Registrations CASCADE CONSTRAINTS;
DROP TABLE Events CASCADE CONSTRAINTS;
DROP TABLE Locations CASCADE CONSTRAINTS;
DROP TABLE Keywords CASCADE CONSTRAINTS;
DROP TABLE HasKeyword CASCADE CONSTRAINTS;

-- Create Users table
CREATE TABLE Users (
userID INTEGER NOT NULL,
profileName VARCHAR2(50) NOT NULL,
email VARCHAR2(50) NOT NULL,
phone VARCHAR2(50) NOT NULL,
PRIMARY KEY (userID));

-- Create Registrations table
CREATE TABLE Registrations (
regID INTEGER NOT NULL,
regTime TIMESTAMP NOT NULL,
userID INTEGER NOT NULL,
eventID INTEGER NOT NULL,
PRIMARY KEY (regID));

-- Create Events table
CREATE TABLE Events (
eventID INTEGER NOT NULL,
eventName VARCHAR2(50) NOT NULL,
eventType VARCHAR2(50) NOT NULL,
eventStatus VARCHAR2(6) NOT NULL,
creationTime TIMESTAMP NOT NULL,
eventDate DATE NOT NULL,
startTime VARCHAR(8) NOT NULL,
endTime VARCHAR(8) NOT NULL,
maxAttendees INTEGER NOT NULL,
userID INTEGER NOT NULL,
locationID INTEGER NOT NULL,
PRIMARY KEY (eventID));

-- Create Locations table
-- street, city, locState, zipCode, building, room, floorNo, and website are optional attributes.
-- A location does not necessarily need to use all attributes (e.g., there could be a non-physical location).
CREATE TABLE Locations (
locationID INTEGER NOT NULL,
locationName VARCHAR2(100) NOT NULL,
street VARCHAR2(50),
city VARCHAR2(50),
locState VARCHAR2(2),
zipCode VARCHAR2(5),
building VARCHAR2(50),
room VARCHAR2(50),
floorNo VARCHAR2(50),
website VARCHAR2(100),
PRIMARY KEY (locationID));

-- Create Keywords table
CREATE TABLE Keywords (
keywordID INTEGER NOT NULL,
content VARCHAR2(50) NOT NULL,
PRIMARY KEY (keywordID));

-- Create HasKeyword table
CREATE TABLE HasKeyword (
eventID INTEGER NOT NULL,
keywordID INTEGER NOT NULL,
PRIMARY KEY (eventID, keywordID));

-- Add foreign key constraints to appropriate tables
-- 'ON DELETE CASCADE' automatically deletes rows that reference the parent row that is deleted
-- (e.g., deleting a keyword from Keywords automatically deletes the corresponding rows in the HasKeyword table that reference the keyword)

-- userID and eventID are foreign keys in the Registrations table.
ALTER TABLE Registrations
ADD (CONSTRAINT reg_user_id_fk FOREIGN KEY (userID)
REFERENCES Users(userID)
ON DELETE CASCADE);
ALTER TABLE Registrations
ADD (CONSTRAINT reg_event_id_fk FOREIGN KEY (eventID)
REFERENCES Events(eventID)
ON DELETE CASCADE);

-- userID and locationID are foreign keys in the Events table.
ALTER TABLE Events
ADD (CONSTRAINT event_user_id_fk FOREIGN KEY (userID)
REFERENCES Users(userID)
ON DELETE CASCADE);
ALTER TABLE Events
ADD (CONSTRAINT event_location_id_fk FOREIGN KEY (locationID)
REFERENCES Locations(locationID)
ON DELETE CASCADE);

-- eventID and keywordID are foreign keys in the HasKeyword table.
ALTER TABLE HasKeyword
ADD (CONSTRAINT has_event_id_fk FOREIGN KEY (eventID)
REFERENCES Events(eventID)
ON DELETE CASCADE);
ALTER TABLE HasKeyword
ADD (CONSTRAINT has_keyword_id_fk FOREIGN KEY (keywordID)
REFERENCES Keywords(keywordID)
ON DELETE CASCADE);

-- This trigger updates an event's status to 'closed' when it becomes full.
-- It checks whether the new registration will make the event reach its max attendees
-- and only updates the event's status if the event becomes full after a registration.
CREATE OR REPLACE TRIGGER update_event_status
BEFORE INSERT ON Registrations
FOR EACH ROW
DECLARE
current_attendees INTEGER;
max_attendees INTEGER;
BEGIN
SELECT COUNT(*) INTO current_attendees FROM Registrations WHERE
eventID = :new.eventID;
SELECT maxAttendees INTO max_attendees FROM Events WHERE eventID =
:new.eventID;
IF (current_attendees + 1) = max_attendees THEN
UPDATE Events SET eventStatus='closed' WHERE eventID =
:new.eventID;
END IF;
END;
/
