FactoryGirl.define do
  factory :program do
    sequence(:name) {|n| "My Program #{n}" } 
    country   
  end
end