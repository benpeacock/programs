FactoryGirl.define do
  factory :question do
    sequence(:question) {|n| "This is my question #{n}" }
    tab
    type
  end
end