# create_table "questions", force: true do |t|
#     t.string   "question"
#     t.integer  "tab_id"
#     t.integer  "type_id"
#     t.integer  "position"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#   end

FactoryGirl.define do
  factory :question do
    sequence(:question) {|n| "This is my question #{n}" }    
  end
end