require 'rails_helper'

RSpec.describe Proponente, type: :model do
  let(:proponente) { create(:proponente) }

  it { expect(proponente).to be_valid }

  context 'is not valid when' do
    it { expect(build(:proponente, nome: nil)).to_not be_valid }
    it { expect(build(:proponente, cpf: nil)).to_not be_valid }
    it { expect(build(:proponente, data_de_nascimento: nil)).to_not be_valid }
    it { expect(build(:proponente, endereco: nil)).to_not be_valid }
    it { expect(build(:proponente, salario: nil)).to_not be_valid }
  end
end
