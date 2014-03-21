FactoryGirl.define do
  factory :answer do
    sequence(:answer) {|n| "This is my answer #{n}" }
    question
    program
    year
  end
end