require 'rails_helper'

describe Post do
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }

  it 'saves a User' do
    user = FactoryGirl.create(:user_with_posts)
    user.posts.length.should eq 5
  end
end
