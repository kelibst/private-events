FactoryGirl.define do
  factory :user do
    sequence(:username, 20) { |n| "person#{n}" }
    sequence(:email, 20) { |n| "person#{n}@example.com" }
  end
end
