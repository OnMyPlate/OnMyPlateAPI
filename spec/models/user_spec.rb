require 'rails_helper'

RSpec.describe User, type: :model do

  it 'has a valid email' do
    user = Factorygirl.build(:user, email: nil)
    expect(user.errors[:email]).to include("can't be blank")
  end

end