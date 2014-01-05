FactoryGirl.define do
  factory :recipe do
    name 'Spaghetti Bolognaise'
    instructions 'Cook spaghetti. Add bolognaise. Serve.'
    user
  end 
end