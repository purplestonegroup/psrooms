class RoomsController < ApplicationController

	before_action :get_room, only: [:index, :home]

  def index
  	
  end


  def show
  	@room = Room.find(params[:id])
  end


  def home
  	if params[:set_locale]
  		redirect_to root_url(locale: params[:set_locale])
  	else

  		@available_rooms = @rooms.where(is_available: true)
  	end
  end
  

  def get_room
  	@rooms = Room.all
  end


end
