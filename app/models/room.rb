class Room < ActiveRecord::Base

	has_many :room_images
	has_many :bookings

	geocoded_by :location, latitude: :latitude, longitude: :longitude
	after_validation :geocode

	def image(size)
		# find the first image in room_images
		if room_images.any?
			room_images.first.image(size)
		else
			"/assets/noimage.png"
		end
	end

	# just to say to the active admin dropdown menu for the room_images (new or edit)
	# and choose the right room instead of having a uninitelegible code 
	# wish we can't identify correctly the room and insert the correspondents images
	def display_name
	    room_code
	end

end
