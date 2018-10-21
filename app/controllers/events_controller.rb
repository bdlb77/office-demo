class EventsController < ApplicationController
	before_action :set_location, only: [:new, :create]
	
	def new
		@event = Event.new
		authorize @event
	end
	
	def create
		@event = Event.new(event_params)
		authorize @event
		@event.location = @location
		@event.user = current_user
		if @event.save
			flash[:notice] = "Your event has been set!"
			redirect_to location_path(@location)
		else
			redirect_to new_location_event_path(@location)
		end
end



	def edit
	end

	def update
	end

	def destroy
	end

	private
	def set_location
		@location = Location.find(params[:location_id])
	end

	def event_params
		params.require(:event).permit(:name, :description, :date, :capacity, :address)
	end
end
