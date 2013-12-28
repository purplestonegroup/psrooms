class BookingsController < ApplicationController

	before_action :get_room

  def new
  	@booking = @room.bookings.new
  end


  def create

    @booking = @room.bookings.new(booking_params)

    if @booking.save

    	flash[:success] = "You have successfully booked the room."
        
		render "create"
    else
        flash[:error] = "You have NOT booked the room."

		render "new"
    end

  end


  def get_room
  	@room = Room.find(params[:room_id])
  end

end
