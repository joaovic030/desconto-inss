# Seed usuarios
User.create([{email: 'usuario@padrao.com', password: 'usuario123'}])

# Seed de proponentes
FactoryBot.create_list(:proponente, 10)