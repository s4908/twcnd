class CreateUsersUnits < ActiveRecord::Migration
  def change
    create_table :users_units do |t|
      t.integer :user_id
      t.integer :monster_id
      t.integer :monster_level
      t.timestamps null: false
    end
  end
end
