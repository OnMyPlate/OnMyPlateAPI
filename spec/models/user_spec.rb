require 'rails_helper'
require_relative '../../app/models/user'

RSpec.describe User, :type => :model do

  it 'creates an instance' do
    user = User.create({
      username: 'test',
      email: 'test@test.com',
      password_digest: '$2a$10$Sf/QzXOZZo1KNR9ghQEFc.DKEmrjX.a3KN..Vk0JN3ZEnVrXvQKqy'
    })

    expect(user.username).to eq 'test'
  end
end