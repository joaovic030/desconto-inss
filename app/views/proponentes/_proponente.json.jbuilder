json.extract! proponente, :id, :nome, :cpf, :data_de_nascimento, :endereco_id, :telefone_pessoal, :telefone_referencias, :salario, :desconto_inss, :created_at, :updated_at
json.url proponente_url(proponente, format: :json)
