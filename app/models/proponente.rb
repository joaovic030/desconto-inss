class Proponente < ApplicationRecord
  belongs_to :endereco

  validates :nome, :cpf, :data_de_nascimento, :endereco, :salario, presence: true

  accepts_nested_attributes_for :endereco

  def sanitize_cpf
    self.cpf.gsub!(/(\d{0,3})\.?(\d{0,3})\.?(\d{0,3})-?(\d{0,2})/, '\1\2\3\4') if self.cpf.present?
  end
end
