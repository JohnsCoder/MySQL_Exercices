# Seleciona a base de dados que você quer usar.
use base_de_dados;
# Mostra as tabelas da base de dados.
show tables;
# Descreve as colunas da tabela.
describe users;
# Inserir registros na base de dados.
insert into users 
(first_name, last_name, email, password_hash) values 
("Maria", "Miranda", "maria@email.com", "b_hash"),
("Carlos", "Gustavo", "carlos@email.com", "c_hash");