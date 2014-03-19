# create_table "answers", force: true do |t|
#     t.string   "answer"
#     t.integer  "question_id"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#   end

FactoryGirl.define do
  factory :answer do
    sequence(:answer) {|n| "This is my answer #{n}" }    
  end
end