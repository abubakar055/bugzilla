class AddDeadlineDateToBugs < ActiveRecord::Migration[7.0]
  def change
    add_column :bugs, :deadline, :date
  end
end
