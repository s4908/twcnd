class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :game_name, :string
    add_column :users, :game_id, :string
    add_column :users, :line_name, :string
  end
end
