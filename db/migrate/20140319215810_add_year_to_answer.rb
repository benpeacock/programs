class AddYearToAnswer < ActiveRecord::Migration
  def change
    add_reference :answers, :year, index: true
  end
end
