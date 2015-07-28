class AddInfoCompletedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :info_completed, :boolean
  end
end
