class AddStatusStringToBugs < ActiveRecord::Migration[7.0]
  def change
    add_column :bugs, :status, :string
  end
end
