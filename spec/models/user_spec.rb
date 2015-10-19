require 'rails_helper'

describe User do

  it { should have_secure_password }

  it 'saves a User' do
    user = FactoryGirl.create(:user)
    user.email.should eq "user@example.com"
  end

  # it do
  #   FactoryGirl.create(:user)
  #   should validate_uniqueness_of :email
  # end

end
