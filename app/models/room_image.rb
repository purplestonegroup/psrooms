class RoomImage < ActiveRecord::Base

	belongs_to :room
	
	has_attached_file :image, styles: { large: "700x450#", medium: "250x150#" }

	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png']

end
