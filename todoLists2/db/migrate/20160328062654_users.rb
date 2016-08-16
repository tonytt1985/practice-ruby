class Users < ActiveRecord::Migration
  def change
  	remove_foreign_key :users, :user_id
  	remove_column :users, :user_id
  end
end