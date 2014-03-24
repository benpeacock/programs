class AddYearToPrograms < ActiveRecord::Migration
  def change
  	add_reference :programs, :year, index: true
  end
end
