# Seta um valor aleatorio.
# Remove as casas decimais do valor.
update users
set salary = round(rand() * 10000, 2)