FactoryGirl.define do
  factory :user do
    username 'My User'
    email 'test@test.de'
    password '11111111'
    password_confirmation '11111111'
    roles { [FactoryGirl.build(:role)]}
  end

end