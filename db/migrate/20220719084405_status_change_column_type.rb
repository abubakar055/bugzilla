class StatusChangeColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :bugs, :status, 'integer USING CAST(status AS integer)'
  end
end
