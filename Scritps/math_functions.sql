SELECT
# Encontra maior valor da tabela.
max(salary) max_salary,
# Encontra menor valor da tabela.
min(salary) min_salary,
# Encontra media do valor da tabela.
avg(salary) avg_salary,
# Faz soma dos valores especificados.
sum(salary) sum_salary,
# Conta quantidade de valores.
count(salary) count_salary
FROM users
where first_name = 'Carly';

SELECT
u.first_name,
max(u.salary) max_salary,
min(u.salary) min_salary,
avg(u.salary) avg_salary,
sum(u.salary) sum_salary,
count(u.id) as total
from users u
JOIN profiles p
on p.user_id = u.id
 # WHERE (SELECT count(u.id) > 1)
GROUP BY first_name
ORDER BY total DESC
;
