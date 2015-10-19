require 'rails_helper'

describe User do

  it {
    FactoryGirl.create(:user)
    should validate_uniqueness_of :email
  }
  it { should have_secure_password }

  it 'saves a User' do
    user = FactoryGirl.create(:user)
    user.email.should eq "leah@leah.com"
  end


end
