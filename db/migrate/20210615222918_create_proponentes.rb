class CreateProponentes < ActiveRecord::Migration[5.0]
  def change
    create_table :proponentes do |t|
      t.text :nome
      t.text :cpf
      t.date :data_de_nascimento
      t.references :endereco, foreign_key: true
      t.text :telefone_pessoal
      t.text :telefone_referencias
      t.decimal :salario
      t.decimal :desconto_inss

      t.timestamps
    end
  end
end
