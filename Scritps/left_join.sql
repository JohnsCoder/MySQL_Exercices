# Filtra registros da segunda tabela priorizando os valores da primeira tabela.
SELECT u.id uid, p.id pid, p.bio, u.first_name
FROM users u
LEFT JOIN profiles p
on u.id = p.user_id
;
