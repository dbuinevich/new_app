FactoryBot.define do
    factory :brand do
      sequence(:brand) {|n| 'brand#{n}'} 
    end
  
  end