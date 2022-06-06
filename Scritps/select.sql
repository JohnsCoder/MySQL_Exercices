# Seleciona colunas.
select email as e, id as "Estou procurando id", first_name as fn from users as u;
select email e, id i, first_name fn from users u;
select u.email uemail, u.id uid, u.first_name ufn from users u;
