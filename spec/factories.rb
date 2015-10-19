FactoryGirl.define do
  factory(:user) do
    email('leah@leah.com')
    password('leah135908523905')
    password_confirmation('leah135908523905')
  end

end
