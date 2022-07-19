class UserTypeChangeColumnType < ActiveRecord::Migration[7.0]
  def change
    # change_column :users, :user_type, :integer
    change_column :users, :user_type, 'numeric USING CAST(user_type AS numeric)'
  end
end
