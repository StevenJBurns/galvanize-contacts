-- Return the first name and last name of everyone born in the 21st century, in reverse alphabetical order

SELECT concat(first_name, ' ', last_name) AS user
FROM users
WHERE date_of_birth > '2001-Jan-01'
ORDER BY last_name DESC;


-- Return the biographies of everyone whose biography contains the word "man"

SELECT concat(first_name, ' ', last_name) AS user, biography AS "Biography includes -man-"
FROM users
WHERE biography
LIKE '%man%';


-- Return first name, last name, and each contact type and contact value for Danny Fritz

SELECT first_name, last_name, type, value
FROM users AS u
INNER JOIN contacts AS c
ON u.id = c.user_id
WHERE u.id = 3;


-- Return the first names of Kyle and Danny using only one WHERE clause

SELECT first_name
FROM users
WHERE first_name = 'Kyle' OR first_name = 'Danny';


-- Return a list of every user with a count of how many contacts they each have

SELECT concat(u.first_name, ' ', u.last_name) AS user, COUNT(*) AS "contact count"
FROM users AS u
INNER JOIN contacts AS c
ON u.id = c.user_id
GROUP BY u.id;
