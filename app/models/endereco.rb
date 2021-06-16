class Endereco < ApplicationRecord

  validates :logradouro, :numero, :cidade, :estado, presence: true
end
