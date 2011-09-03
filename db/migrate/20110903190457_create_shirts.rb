class CreateShirts < ActiveRecord::Migration
  def self.up
    create_table :shirts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :shirts
  end
end
