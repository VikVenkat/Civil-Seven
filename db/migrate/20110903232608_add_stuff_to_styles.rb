class AddStuffToStyles < ActiveRecord::Migration
  def self.up
    add_column :styles, :shirt_id, :integer
    add_column :styles, :name, :string
	add_column :styles, :collar, :string
	add_column :styles, :cuff, :string
	add_column :styles, :pocket, :string
	add_column :styles, :placket, :string
	add_column :styles, :acc_collar, :boolean
	add_column :styles, :acc_cuff, :boolean
	add_column :styles, :acc_placket, :boolean
	add_column :styles, :notes, :string
  end

  def self.down
    remove_column :styles, :shirt_id
    remove_column :styles, :name
	remove_column :styles, :collar
	remove_column :styles, :cuff
	remove_column :styles, :pocket
	remove_column :styles, :placket
	remove_column :styles, :acc_collar
	remove_column :styles, :acc_cuff
	remove_column :styles, :acc_placket
	remove_column :styles, :notes
  end
end
