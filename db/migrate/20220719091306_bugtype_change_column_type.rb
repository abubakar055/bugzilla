class BugtypeChangeColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :bugs, :bugtype, 'integer USING CAST(bugtype AS integer)'
  end
end
