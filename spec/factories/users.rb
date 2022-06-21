FactoryBot.define do
  factory :user do
    first_name {'first'} 
    last_name {'last'} 
    phone_num {1234567} 
    sequence(:email) { |n| "vasya#{n.to_s}@gmail.com"} 
    password {'password'} 
    password_confirmation {'password'}
    admin { false }
  end

end
