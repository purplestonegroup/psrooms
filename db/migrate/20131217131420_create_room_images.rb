class CreateRoomImages < ActiveRecord::Migration
  def change
    create_table :room_images do |t|

    	t.integer :room_id
    	t.attachment :image
    	t.text :description

      t.timestamps
    end
  end
end
