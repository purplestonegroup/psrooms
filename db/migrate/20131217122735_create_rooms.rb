class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|

    	t.string :room_code
    	t.string :room_type
    	t.string :zone
    	t.string :neighborhood
    	t.decimal :week_price, precision: 8, scale: 2
    	t.text :description

    	t.boolean :bills_included, :default => false
    	t.string :internet
    	t.string :transport

    	t.string :location
    	t.float :latitude
    	t.float :longitude

    	t.timestamps
    end
  end
end
