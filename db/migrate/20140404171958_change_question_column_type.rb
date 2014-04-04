class ChangeQuestionColumnType < ActiveRecord::Migration
 def up
   change_column :questions, :question, :text, limit: 3000
  end

  def down
   change_column :questions, :question, :string
  end
end