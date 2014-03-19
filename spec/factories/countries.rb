FactoryGirl.define do
  factory :country do
    sequence(:name) {|n| "My Country #{n}" }    
  end
end
