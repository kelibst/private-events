FactoryGirl.define do
  factory :user do
    sequence(:username, 100) { |n| "person#{n}" }
    sequence(:email, 100) { |n| "person#{n}@example.com" }
  end
end
