# Atualiza resgistro da tabela de acordo com filtro passado.
UPDATE users set first_name = 'Fabiano', last_name = 'Rodrigues'
WHERE id BETWEEN 180 and 185;
SELECT * FROM users
WHERE id BETWEEN 180 and 185;
