# Limita quantidade de valores recebidos de acordo com número passado.
# Determina de qual indice onde o LIMIT irá começar.
SELECT id, first_name, email as uemail FROM users
LIMIT 10 OFFSET 5
# ou LIMIT 5,10;
;