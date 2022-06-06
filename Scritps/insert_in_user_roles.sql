# Atrelando manualmente o id de um usuario ao id de uma permissão e inserindo dentro de user_roles.
INSERT INTO users_roles (user_id, role_id)
VALUES (121, 104);

# Relacionando id da tabela users com id da tabela roles.
SELECT id,
(SELECT id from roles order by rand() limit 1 ) anyid
FROM users
ORDER BY id
;

SELECT id from roles order by rand() limit 1;

/* Anexando automáticamente e randomicamente a tabela id de users
 ao id de roles dentro de user_roles. */
INSERT IGNORE INTO users_roles (user_id, role_id)
SELECT id,
(SELECT id FROM roles ORDER BY rand() LIMIT 1)
from users ORDER BY rand() LIMIT 50; 