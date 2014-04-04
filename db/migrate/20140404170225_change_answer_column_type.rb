class ChangeAnswerColumnType < ActiveRecord::Migration
 def up
   change_column :answers, :answer, :text, limit: 10000
  end

  def down
   change_column :answers, :answer, :string
  end
end
