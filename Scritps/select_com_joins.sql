SELECT u.id as uid, u.first_name, P.bio
, r.name role_name
# Filtrando valores de profiles de acordo com valor dos usuarios.
FROM users u
LEFT JOIN profiles p ON u.id = p.user_id
INNER JOIN users_roles ur on u.id = ur.user_id
# Mostrando as relações do id de usuarios com o de users_roles.
INNER JOIN roles r on ur.role_id = r.id
# Mostrando as reções do id de usuarios com a do name de roles.
ORDER BY uid asc
;