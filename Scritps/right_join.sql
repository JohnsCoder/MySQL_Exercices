# Filtra registros da primeira tabela priorizando os valores da segunda tabela.
SELECT u.id uid, p.id pid, p.bio, u.first_name
FROM users u
RIGHT JOIN profiles p
on u.id = p.user_id
;
