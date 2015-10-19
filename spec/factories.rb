FactoryGirl.define do  factory :comment do
    user nil
comment "MyString"
post nil
  end


  factory :post do
    title "MyString"
    user
    content "MyString"
  end

  factory(:user) do
    sequence :email do |n|
      "user@example.com"
    end
    username 'Leah'
    password('leah135908523905')
    password_confirmation('leah135908523905')
    factory :user_with_posts do
      transient do
        posts_count 5
      end
      after(:create) do |user, evaluator|
        create_list(:post, evaluator.posts_count, user: user)
      end
    end
  end

  factory(:session) do
    email 'user@example.com'
    password 'leah135908523905'
    factory :session_with_user do
      transient do
        users_count 1
      end
      after(:create) do |session, evaluator|
        create_list(:user, evaluator.users_count, session: session)
      end
    end
  end
end
