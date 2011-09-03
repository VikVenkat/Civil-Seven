class AddStuffToShirts < ActiveRecord::Migration
  def self.up
    add_column :shirts, :style, :string
	add_column :shirts, :fabric, :string
	add_column :shirts, :order_id, :integer
	add_column :shirts, :price, :float
	
  end

  def self.down
    remove_column :shirts, :style 
	remove_column :shirts, :fabric
	remove_column :shirts, :order_id
	remove_column :shirts, :price
  end
end
