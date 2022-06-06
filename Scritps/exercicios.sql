-- EX 01
INSERT INTO users
(first_name, last_name, email, password_hash)
VALUES 
("user1", "user1", "usuario1@email.com", "asfidbh"),
("user2","user2","usuario2@email.com","abnidj"),
("user3", "user3", "usuario3@gmail.com", "dojikgn"),
("user4", "user4", "usuario4@gmail.com", "binf"),
("user5", "user5", "usuario5@gmail.com", "slitasf");


-- EX 02
INSERT INTO profiles
(bio, description, user_id)
SELECT
concat("Bio de:", first_name),
concat("Description de:", first_name),
id
FROM users;


-- EX 03
INSERT IGNORE INTO users_roles
(user_id, role_id)
SELECT u.id uid,
(SELECT r.id rid FROM roles r ORDER BY rand() LIMIT 1)
 FROM users u ORDER BY rand() LIMIT 50;


-- EX 04
SELECT * FROM users
ORDER BY id DESC
LIMIT 5;


-- EX 05
UPDATE users
SET
first_name = concat(first_name, " atualizado"),
last_name = concat(last_name, " atualizado")
WHERE id = 227;


-- EX 06
DELETE FROM users_roles WHERE
role_id = (SELECT id FROM roles WHERE id = 102) AND user_id = 225;


-- EX 07
DELETE FROM users
WHERE id = (SELECT user_id FROM users_roles WHERE role_id = 
(SELECT id FROM roles WHERE name = 'PUT') LIMIT 1);


-- EX 08
SELECT u.id uid, first_name, email, description, bio, r.name
FROM users u
LEFT JOIN profiles p ON u.id = p.user_id
INNER JOIN users_roles ur ON u.id = ur.user_id
INNER JOIN roles r ON ur.role_id = r.id 

ORDER BY u.id;


-- EX 09
SELECT u.id, first_name, email, bio, r.name 
FROM users u
LEFT JOIN profiles p ON u.id = p.user_id
JOIN users_roles ur ON u.id = ur.user_id
JOIN roles r ON ur.role_id = r.id
ORDER BY u.salary DESC;

 