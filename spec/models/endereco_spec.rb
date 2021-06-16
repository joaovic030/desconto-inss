require 'rails_helper'

RSpec.describe Endereco, type: :model do
  let(:endereco) { create(:endereco) }

  it { expect(endereco).to be_valid }

  context 'is not valid when' do
    it { expect(build(:endereco, logradouro: nil)).to_not be_valid }
    it { expect(build(:endereco, numero: nil)).to_not be_valid }
    it { expect(build(:endereco, cidade: nil)).to_not be_valid }
    it { expect(build(:endereco, estado: nil)).to_not be_valid }
  end
end
