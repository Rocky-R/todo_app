class ChangeNotesOrderToRowOrder < ActiveRecord::Migration
  def change
    remove_column :notes, :order, :integer
    add_column :notes, :row_order, :integer
  end
end
