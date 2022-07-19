class AddBugtypeStringToBug < ActiveRecord::Migration[7.0]
  def change
    add_column :bugs, :bugtype, :string
  end
end
