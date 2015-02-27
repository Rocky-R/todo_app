class AddDueDateToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :due_on, :datetime
  end
end
