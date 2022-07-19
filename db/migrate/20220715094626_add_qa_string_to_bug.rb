class AddQaStringToBug < ActiveRecord::Migration[7.0]
  def change
    add_column :bugs, :qa, :string
  end
end
