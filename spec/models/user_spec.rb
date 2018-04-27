require 'rails_helper'

describe User do
  it 'creates a new User with the name masen76' do
    user = FactoryBot.create(:user)
    user.username.should eq 'masen76'
  end

  it 'will encrypt the password' do
    user = FactoryBot.create(:user)
    user.password_hash.should_not eq 'user.password'
  end
end
