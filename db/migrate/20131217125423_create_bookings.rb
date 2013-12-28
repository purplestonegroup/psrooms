class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|

    	t.integer :room_id
    	t.string :name
    	t.string :email
    	t.string :phone
    	t.string :address
    	t.string :post_code

      t.timestamps
    end
  end
end
