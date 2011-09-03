class AddStuffToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :user_id, :integer
    add_column :orders, :order_date, :date
	add_column :orders, :total, :float
  end

  def self.down
    remove_column :orders, :user_id
    remove_column :orders, :order_date
	remove_column :orders, :total
  end
end
