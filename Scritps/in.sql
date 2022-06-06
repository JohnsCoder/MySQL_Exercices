# Seleciona elementos que tenham valores iguais ao que você passou.
SELECT * FROM users
WHERE
id IN (120, 130, 150)
and
first_name IN ('Tanner', 'Baker');