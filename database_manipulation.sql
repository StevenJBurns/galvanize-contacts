--Add a field to the User table called is_human with the appropriate data type

ALTER TABLE users ADD COLUMN is_human BOOLEAN DEFAULT false;


-- Set is_human for all Users except Danny to true

UPDATE users SET is_human = true WHERE NOT id = 3;


-- Delete all human users

DELETE FROM users WHERE is_human = true;


-- Drop the Contact table

DROP TABLE contacts;
