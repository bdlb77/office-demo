class EventsController < ApplicationController

	def new
		@event = Event.new
		authorize @event
	end
	
	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
