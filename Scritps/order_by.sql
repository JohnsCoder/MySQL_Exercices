# Ordena valores de acordo com filtro que você passa ASC (Ascendente)e DESC (Descendente).
SELECT first_name, email as uemail 
FROM users
WHERE id BETWEEN 100 and 150
ORDER BY created_at ASC;