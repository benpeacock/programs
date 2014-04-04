class RemoveYearidFromPrograms < ActiveRecord::Migration
  def change
  	remove_column :programs, :year_id
  end
end
