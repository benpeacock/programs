class AddProgramToAnswer < ActiveRecord::Migration
  def change
    add_reference :answers, :program, index: true
  end
end
