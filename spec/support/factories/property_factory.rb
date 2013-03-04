FactoryGirl.define do
  factory :property do
    trait :valid do
      location 'Copenhagen'
    end 

    factory :valid_property, traits: [:valid] 
  end
end
