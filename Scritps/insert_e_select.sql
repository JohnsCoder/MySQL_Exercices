# Insere valores de determinado lugar.
# Concatena valores.

INSERT INTO profiles
(bio, description, user_id) 
SELECT 
concat('Bio de: ', first_name),
concat('Description de: ', first_name),
id from users;


DELETE from profiles;