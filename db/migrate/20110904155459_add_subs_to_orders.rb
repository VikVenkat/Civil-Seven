class AddSubsToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :subs_duration, :integer
	add_column :orders, :subs_period, :string
  end

  def self.down
  remove_column :orders, :subs_duration 
  remove_column :orders, :subs_period 
  end
end
