require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { expect(user).to be_valid }

  context 'is not valid when' do
    it { expect(build(:user, email: nil)).to_not be_valid }
    it { expect(build(:user, password: nil)).to_not be_valid }
  end
end
