FactoryGirl.define do
  factory :tab do
    sequence(:name) {|n| "My Tab #{n}" }    
  end
end