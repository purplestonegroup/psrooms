class AddAvailableToRooms < ActiveRecord::Migration
  def change

  	add_column :rooms, :is_available, :boolean, default: false

  end
end
