class LocationsController < ApplicationController
		before_action :set_location, only: [:show]
	def index	
		@locations = policy_scope(Location)
	end

	def show
	end

	def new
		@location = Location.new
		authorize @location
	end

	def create
		@location = Location.new(location_params)
		authorize @location
		if @location.save
			flash[:notice] = "Your location has been created"
			redirect_to location_path(@location)
		else
			redirect_to new_location_path(@location)
		end
	end
	private

	def set_location
		@location =  Location.find(params[:id])
		authorize @location
	end
	def location_params
		params.require(:location).permit(:city, :name, :open)
	end
end
