FactoryGirl.define do
  factory :type do
    sequence(:name) {|n| "My Type #{n}" }    
  end
end