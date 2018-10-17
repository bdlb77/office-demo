class FlatsController < ApplicationController
before_action :set_flat, only: [:show]
def show
	authorize @flat
end

private 
	def set_flat
		@flat = Flat.find(params[:id])
	end
end
