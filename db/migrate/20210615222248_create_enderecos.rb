class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.text :logradouro
      t.text :numero
      t.text :bairro
      t.text :cidade
      t.text :estado
      t.text :cep

      t.timestamps
    end
  end
end
