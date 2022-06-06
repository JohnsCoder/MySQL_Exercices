# Filtrar registros.
select * from users
# Operadores de comparação: =, <, <=, >, >=, <>, !=, 
where created_at > '2022-05-30 22:13:27'
# Operadores Lógicos: <and> e <or>
and first_name = 'Maria' or password_hash = '15235sa';