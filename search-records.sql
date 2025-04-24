/*
search-records.sql - Make queries.
Joseph Furmanowski, CS-432, Spring 2023
*/

-- Query 1:
-- List the event ID, event name, and number of attendees of the event
-- with the most registered attendees.
SELECT e.eventID, eventName, COUNT(regID) AS attendees
FROM Events e, Registrations r
WHERE e.eventID = r.eventID
GROUP BY e.eventID, eventName
HAVING COUNT(regID) IN (SELECT MAX(attendees)
FROM (SELECT e.eventID, eventName, COUNT(regID) AS
attendees
FROM Events e, Registrations r
WHERE e.eventID = r.eventID
GROUP BY e.eventID, eventName));

-- Query 2:
-- List the contents of the keywords that are used
-- by the event with the most registered attendees.
-- Keywords may repeat if more than one event has the most attendees,
-- so make sure that keywords do not repeat.
SELECT DISTINCT content
FROM Keywords k, HasKeyword h
WHERE k.keywordID = h.keywordID
AND eventID IN (SELECT eventID
FROM (SELECT e.eventID AS eventID, COUNT(regID) AS
attendees
FROM Events e, Registrations r
WHERE e.eventID = r.eventID
GROUP BY e.eventID
HAVING COUNT(regID) IN (SELECT MAX(attendees)
FROM (SELECT e.eventID,
COUNT(regID) AS attendees
FROM Events e, Registrations r
WHERE e.eventID = r.eventID
GROUP BY e.eventID))));

-- Query 3:
-- List all attributes of the users who have registered to attend two or more
-- events that are being held at a location in New Jersey (NJ).
SELECT *
FROM Users
WHERE userID IN (SELECT userID
FROM (SELECT r.userID AS userID, COUNT(r.userID)
FROM Registrations r, Events e, Locations l
WHERE e.eventID = r.eventID
AND e.locationID = l.locationID
AND l.locState = 'NJ'
GROUP BY r.userID
HAVING COUNT(r.userID) >= 2));