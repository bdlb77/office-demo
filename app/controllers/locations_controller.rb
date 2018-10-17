class LocationsController < ApplicationController
		before_action :set_location, only: [:show]
	def index
		@locations = policy_scope(Location)
	end

	def show
	end

	private

	def set_location
		@location =  Location.find(params[:id])
		authorize @location
	end

end
