FactoryBot.define do
  factory :proponente do
    nome { Faker::Name.name }
    cpf { Faker::IDNumber.brazilian_citizen_number }
    data_de_nascimento { Faker::Date.birthday(min_age: 18, max_age: 65) }
    endereco
    telefone_pessoal { Faker::PhoneNumber.phone_number }
    telefone_referencias { Faker::PhoneNumber.phone_number }
    salario { Faker::Number.within(range: 800..7000) }
    desconto_inss {  }
  end
end
