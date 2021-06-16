FactoryBot.define do
  factory :endereco do
    logradouro { Faker::Address.street_name }
    numero { Faker::Address.building_number }
    bairro { Faker::Address.community }
    cidade { Faker::Address.city }
    estado { Faker::Address.state }
    cep { Faker::Address.zip_code }
  end
end
