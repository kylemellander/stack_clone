require 'rails_helper'

describe Session do
  it 'Logs in a User' do
    session = FactoryGirl.create(:session_with_user)
    session.current_user.email.should eq "user@example.com"
  end
end
