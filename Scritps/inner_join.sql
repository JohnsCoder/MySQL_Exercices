# Filtra registros de uma tabela utilizando valores de outra tabela.
SELECT u.id uid, p.id pid, p.bio, u.first_name
FROM users u
INNER JOIN profiles p
on u.id = p.user_id
WHERE u.last_name LIKE '%a'
ORDER BY u.first_name DESC
LIMIT 5;