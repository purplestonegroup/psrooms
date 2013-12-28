class RoomImage < ActiveRecord::Base

	belongs_to :room
	
	has_attached_file :image, styles: { large: "700x450#", medium: "250x150#" }

end
