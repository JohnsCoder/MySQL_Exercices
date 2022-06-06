# seleciona linhas que tenham pelo menos algum caractere do valor de acordo com comando.
# Caracter coringa '%' indica que o valor pode ser qualquer coisa antes ou depois do elemento indicado.
# Caracter de espaço vazio '_' pode ser substituido por qualquer coisa 
SELECT id, first_name, email as uemail 
FROM users
WHERE first_name LIKE '%ma%'