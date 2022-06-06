# Seletor utiliza intervalo de valores;
SELECT * FROM users
WHERE 
created_at BETWEEN '2020-06-12 00:00:00' and '2020-09-04 23:59:59'
and 
id BETWEEN 50 and 150;