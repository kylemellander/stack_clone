FactoryGirl.define do  factory :post do
    title "MyString"
user nil
content "MyString"
  end

  factory(:user) do
    sequence :email do |n|
      "user#{n}@example.com"
    end
    password('leah135908523905')
    password_confirmation('leah135908523905')
  end

end
