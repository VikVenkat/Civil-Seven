class AddStuffToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :height_ft, :integer
	add_column :users, :height_in, :integer
	add_column :users, :weight_lb, :integer
	add_column :users, :body_type, :string
	add_column :users, :fave_garm_id, :integer
  end

  def self.down
	remove_column :users, :height_ft
	remove_column :users, :height_in
	remove_column :users, :weight_lb
	remove_column :users, :body_type
	remove_column :users, :fave_garm_id

  end
end
