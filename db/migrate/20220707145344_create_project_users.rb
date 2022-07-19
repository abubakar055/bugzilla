class CreateProjectUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :project_users do |t|
      t.bigint :project_id
      t.bigint :user_id

      t.timestamps
    end
  end
end
