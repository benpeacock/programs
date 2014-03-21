FactoryGirl.define do
  factory :year do
    sequence(:year) {|n| "My Year #{n}" }    
  end
end