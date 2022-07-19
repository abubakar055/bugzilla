class ChangeProductRequiredFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :manager

  end
end
