FactoryGirl.define do
  factory :role do
    sequence(:name) { |n| "My category #{n}"}
  end

end
