FactoryGirl.define do
  factory :user do
    name 'bob'
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end
end