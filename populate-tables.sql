/*
populate-tables.sql - Input all records.
Joseph Furmanowski, CS-432, Spring 2023
*/

-- Populate Users table
INSERT INTO Users VALUES (1, 'JSmith123', 'jsmith123@gmail.com', '987-654-3210');
INSERT INTO Users VALUES (2, 'RMiller789', 'rmiller789@hotmail.com', '876-543-2109');
INSERT INTO Users VALUES (3, 'BGarcia234', 'bgarcia234@gmail.com', '765-432-1098');
INSERT INTO Users VALUES (4, 'DAdams456', 'dadams456@hotmail.com', '654-321-0987');
INSERT INTO Users VALUES (5, 'CAllen789', 'callen789@gmail.com', '543-210-9876');
INSERT INTO Users VALUES (6, 'SGray001', 'sgray001@gmail.com', '432-109-8765');
INSERT INTO Users VALUES (7, 'JLee002', 'jlee002@gmail.com', '321-098-7654');
INSERT INTO Users VALUES (8, 'PWalker004', 'pwalker004@hotmail.com', '210-987-6543');
INSERT INTO Users VALUES (9, 'MMiller008', 'mmiller008@gmail.com', '109-876-5432');
INSERT INTO Users VALUES (10, 'KKim009', 'kkim009@gmail.com', '098-765-4321');
INSERT INTO Users VALUES (11, 'LNguyen10', 'lnguyen10@gmail.com', '888-555-1234');
INSERT INTO Users VALUES (12, 'JChen11', 'jchen11@hotmail.com', '777-444-5678');
INSERT INTO Users VALUES (13, 'AMartinez12', 'amartinez12@gmail.com', '666-333-9012');
INSERT INTO Users VALUES (14, 'KWilson13', 'kwilson13@gmail.com', '555-222-3456');
INSERT INTO Users VALUES (15, 'ECook14', 'ecook14@gmail.com', '444-111-6789');
INSERT INTO Users VALUES (16, 'JJackson15', 'jjackson15@hotmail.com', '333-000-8901');
INSERT INTO Users VALUES (17, 'JGarcia16', 'jgarcia16@gmail.com', '222-999-0123');
INSERT INTO Users VALUES (18, 'NBrown17', 'nbrown17@yahoo.com', '111-888-2345');
INSERT INTO Users VALUES (19, 'JDavis18', 'jdavis18@icloud.com', '000-777-4567');
INSERT INTO Users VALUES (20, 'JMitchell19', 'jmitchell19@yahoo.com', '999-666-7890');

-- Populate Locations table
INSERT INTO Locations VALUES (1, 'Grand Ballroom', '123 Main Street', 'Chicago', 'IL', '60601', 'Grand Hotel', 'Ballroom', '2nd Floor', 'http://www.grandhotel.com');
INSERT INTO Locations VALUES (2, 'Garden Courtyard', '456 Elm Avenue', 'Los Angeles', 'CA', '90001', 'Riviera Hotel', 'Courtyard', '1st Floor', 'http://www.rivierahotel.com');
INSERT INTO Locations VALUES (3, 'River View Terrace', '789 Oak Street', 'Seattle', 'WA', '98101', 'Marriott Hotel', 'Terrace', '3rd Floor', 'http://www.marriotthotel.com');
INSERT INTO Locations VALUES (4, 'Skyline Conference Room', '10 Market Street', 'San Francisco', 'CA', '94101', 'Westin Hotel', 'Conference Room', '30th Floor', 'http://www.westinhotel.com');
INSERT INTO Locations VALUES (5, 'Monmouth University', '400 Cedar Ave', 'West Long Branch', 'NJ', '07764', 'Howard Hall', 'HH310', '3rd Floor', 'http://www.monmouth.edu/department-of-csse');
INSERT INTO Locations VALUES (6, 'Monmouth University', '400 Cedar Ave', 'West Long Branch', 'NJ', '07764', 'Pollak Theatre', 'Theatre', '1st Floor', 'http://www.monmouth.edu/mca/pollak-theatre');
INSERT INTO Locations VALUES (7, 'Jacob K. Javits Convention Center', '429 11th Ave', 'NY', 'NY', '10001', 'Convention Center', NULL, NULL, 'http://www.javitscenter.com');
INSERT INTO Locations VALUES (8, 'Business Minds Central', '456 Main Street', 'Eatontown', 'NJ', '07724', 'Thomas Edison Building', 'Auditorium', '1st Floor', 'http://www.bizcentral.com');
INSERT INTO Locations VALUES (9, 'Boston Convention Center', '789 Main Street', 'Boston', 'MA', '02108', 'Convention Center', 'Exhibition Hall', '2nd Floor', 'http://www.bostonconventioncenter.com');
INSERT INTO Locations VALUES (10, 'Metropolitan Museum of Art (The Met)', '1000 5th Avenue', 'New York', 'NY', '10028', 'The American Wing', 'Gallery 700', '7th Floor', 'http://www.metmuseum.org');

-- Populate Events table
INSERT INTO Events VALUES (1, 'Annual Conference', 'Conference', 'open', '01-APR-23 10:00:00.000000 AM', '15-NOV-23', '06:30 PM', '10:30 PM', 100, 1, 1);
INSERT INTO Events VALUES (2, 'Monmouth University Campus Visit #1', 'Open House', 'open', '01-APR-23 09:00:00.000000 PM', '07-APR-24', '09:30 AM', '12:30 PM', 1000, 2, 6);
INSERT INTO Events VALUES (3, 'Monmouth University Campus Visit #2', 'Open House', 'open', '01-APR-23 09:15:00.000000 PM', '14-APR-24', '09:30 AM', '12:30 PM', 1000, 2, 6);
INSERT INTO Events VALUES (4, '2024 Tech Expo', 'Expo', 'open', '02-APR-23 12:00:00.000000 PM', '20-JAN-24', '01:00 PM', '05:00 PM', 1000, 3, 4);
INSERT INTO Events VALUES (5, 'Marketing Summit', 'Summit', 'open', '03-APR-23 12:00:00.000000 PM', '30-APR-24', '12:30 PM', '06:30 PM', 250, 4, 2);
INSERT INTO Events VALUES (6, 'Product Launch', 'Exhibit', 'open', '04-APR-23 04:00:00.000000 PM', '10-MAR-24', '01:30 PM', '05:30 PM', 1000, 5, 3);
INSERT INTO Events VALUES (7, 'Student Employee Appreciation Day', 'Celebration', 'open', '05-APR-23 09:00:00.000000 PM', '25-APR-23', '12:00 PM', '01:30 PM', 25, 6, 5);
INSERT INTO Events VALUES (8, '2023 New York International Auto Show', 'Car Show', 'open', '06-APR-23 12:00:00.000000 AM', '07-APR-23', '09:00 AM', '10:00 PM', 5000, 7, 7);
INSERT INTO Events VALUES (9, 'Startup Pitch Competition', 'Competition', 'open', '08-APR-23 12:00:00.000000 AM', '25-MAY-23', '06:00 PM', '10:00 PM', 50, 8, 8);
INSERT INTO Events VALUES (10, 'Annual Boston Job Fair', 'Job Fair', 'open', '08-APR-23 12:00:00.000000 AM', '06-JUN-23', '06:00 PM', '10:00 PM', 500, 9, 9);
INSERT INTO Events VALUES (11, '2023 New York City Art Exhibit', 'Exhibit', 'closed', '08-APR-23 12:00:00.000000 AM', '01-JUL-23', '06:00 PM', '10:00 PM', 1000, 10, 10);
INSERT INTO Events VALUES (12, 'Only One Person May Attend', 'Demonstration', 'open', '08-APR-23 03:00:00.000000 AM', '16-APR-23', '01:00 PM', '01:30 PM', 1, 11, 4);

-- Populate Registrations table
INSERT INTO Registrations VALUES (1, '02-APR-23 11:00:00.000000 AM', 11, 2);
INSERT INTO Registrations VALUES (2, '02-APR-23 11:01:00.000000 AM', 12, 2);
INSERT INTO Registrations VALUES (3, '03-APR-23 11:02:00.000000 AM', 13, 3);
INSERT INTO Registrations VALUES (4, '03-APR-23 11:03:00.000000 AM', 14, 3);
INSERT INTO Registrations VALUES (5, '04-APR-23 11:04:00.000000 AM', 15, 1);
INSERT INTO Registrations VALUES (6, '04-APR-23 12:00:00.000000 PM', 16, 1);
INSERT INTO Registrations VALUES (7, '05-APR-23 12:01:00.000000 PM', 15, 2);
INSERT INTO Registrations VALUES (8, '05-APR-23 12:02:00.000000 PM', 17, 4);
INSERT INTO Registrations VALUES (9, '06-APR-23 12:03:00.000000 PM', 18, 4);
INSERT INTO Registrations VALUES (10, '07-APR-23 12:04:00.000000 PM', 19, 4);
INSERT INTO Registrations VALUES (11, '07-APR-23 1:00:00.000000 PM', 20, 5);
INSERT INTO Registrations VALUES (12, '08-APR-23 1:01:00.000000 PM', 16, 6);
INSERT INTO Registrations VALUES (13, '08-APR-23 1:02:00.000000 PM', 19, 7);
INSERT INTO Registrations VALUES (14, '09-APR-23 1:03:00.000000 PM', 15, 8);
INSERT INTO Registrations VALUES (15, '09-APR-23 1:04:00.000000 PM', 14, 4);
INSERT INTO Registrations VALUES (16, '09-APR-23 2:00:00.000000 PM', 12, 4);
INSERT INTO Registrations VALUES (17, '09-APR-23 2:01:00.000000 PM', 11, 9);
INSERT INTO Registrations VALUES (18, '09-APR-23 2:02:00.000000 PM', 12, 8);
INSERT INTO Registrations VALUES (19, '10-APR-23 2:03:00.000000 PM', 13, 8);
INSERT INTO Registrations VALUES (20, '10-APR-23 2:04:00.000000 PM', 14, 8);
INSERT INTO Registrations VALUES (21, '10-APR-23 2:05:00.000000 PM', 14, 9);
INSERT INTO Registrations VALUES (22, '10-APR-23 2:06:00.000000 PM', 12, 12);

-- Populate Keywords table
INSERT INTO Keywords VALUES (1, 'business');
INSERT INTO Keywords VALUES (2, 'technology');
INSERT INTO Keywords VALUES (3, 'Android');
INSERT INTO Keywords VALUES (4, 'iPhone');
INSERT INTO Keywords VALUES (5, 'CSSE');
INSERT INTO Keywords VALUES (6, 'speech');
INSERT INTO Keywords VALUES (7, 'keynote');
INSERT INTO Keywords VALUES (8, 'conference');
INSERT INTO Keywords VALUES (9, 'innovation');
INSERT INTO Keywords VALUES (10, 'marketing');
INSERT INTO Keywords VALUES (11, 'networking');
INSERT INTO Keywords VALUES (12, 'industry');
INSERT INTO Keywords VALUES (13, 'campus');
INSERT INTO Keywords VALUES (14, 'Monmouth');
INSERT INTO Keywords VALUES (15, 'colleges');
INSERT INTO Keywords VALUES (16, 'university');
INSERT INTO Keywords VALUES (17, 'cars');
INSERT INTO Keywords VALUES (18, 'vehicles');
INSERT INTO Keywords VALUES (19, 'Subaru');
INSERT INTO Keywords VALUES (20, 'electric cars');
INSERT INTO Keywords VALUES (21, 'test drive');
INSERT INTO Keywords VALUES (22, 'employee');
INSERT INTO Keywords VALUES (23, 'startups');
INSERT INTO Keywords VALUES (24, 'shark tank');
INSERT INTO Keywords VALUES (25, 'jobs');
INSERT INTO Keywords VALUES (26, 'internships');
INSERT INTO Keywords VALUES (27, 'art');
INSERT INTO Keywords VALUES (28, 'paintings');
INSERT INTO Keywords VALUES (29, 'museum');

-- Populate HasKeyword table
INSERT INTO HasKeyword VALUES (1, 1);
INSERT INTO HasKeyword VALUES (1, 9);
INSERT INTO HasKeyword VALUES (1, 12);
INSERT INTO HasKeyword VALUES (1, 8);
INSERT INTO HasKeyword VALUES (2, 5);
INSERT INTO HasKeyword VALUES (2, 6);
INSERT INTO HasKeyword VALUES (2, 11);
INSERT INTO HasKeyword VALUES (2, 13);
INSERT INTO HasKeyword VALUES (2, 14);
INSERT INTO HasKeyword VALUES (2, 15);
INSERT INTO HasKeyword VALUES (2, 16);
INSERT INTO HasKeyword VALUES (3, 5);
INSERT INTO HasKeyword VALUES (3, 6);
INSERT INTO HasKeyword VALUES (3, 11);
INSERT INTO HasKeyword VALUES (3, 13);
INSERT INTO HasKeyword VALUES (3, 14);
INSERT INTO HasKeyword VALUES (3, 15);
INSERT INTO HasKeyword VALUES (3, 16);
INSERT INTO HasKeyword VALUES (4, 1);
INSERT INTO HasKeyword VALUES (4, 2);
INSERT INTO HasKeyword VALUES (4, 3);
INSERT INTO HasKeyword VALUES (4, 4);
INSERT INTO HasKeyword VALUES (4, 7);
INSERT INTO HasKeyword VALUES (4, 9);
INSERT INTO HasKeyword VALUES (4, 10);
INSERT INTO HasKeyword VALUES (4, 12);
INSERT INTO HasKeyword VALUES (5, 1);
INSERT INTO HasKeyword VALUES (5, 6);
INSERT INTO HasKeyword VALUES (5, 10);
INSERT INTO HasKeyword VALUES (6, 2);
INSERT INTO HasKeyword VALUES (6, 3);
INSERT INTO HasKeyword VALUES (6, 4);
INSERT INTO HasKeyword VALUES (6, 7);
INSERT INTO HasKeyword VALUES (7, 22);
INSERT INTO HasKeyword VALUES (8, 2);
INSERT INTO HasKeyword VALUES (8, 17);
INSERT INTO HasKeyword VALUES (8, 18);
INSERT INTO HasKeyword VALUES (8, 19);
INSERT INTO HasKeyword VALUES (8, 20);
INSERT INTO HasKeyword VALUES (8, 21);
INSERT INTO HasKeyword VALUES (9, 23);
INSERT INTO HasKeyword VALUES (9, 24);
INSERT INTO HasKeyword VALUES (10, 25);
INSERT INTO HasKeyword VALUES (10, 26);
INSERT INTO HasKeyword VALUES (11, 27);
INSERT INTO HasKeyword VALUES (11, 28);
INSERT INTO HasKeyword VALUES (11, 29);