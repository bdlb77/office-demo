class FlatsController < ApplicationController
  before_action :set_flat, only: [:show]
  before_action :set_location, only: %i[new create]

  def show
    @flat.available?
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    authorize @flat
    @flat.location = @location
    if @flat.save
      flash[:notice] = "Your flat has been set!"
      redirect_to location_flat_path(@location, @flat)
    else
      redirect_to new_location_flat_path(@location)
    end
  end

  def destroy; end

  private

  def flat_params
    params.require(:flat).permit(:flat_type, :address, :occupancy, :bedrooms, :bathrooms, :floor_number, :availability)
  end

  def set_flat
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def set_location
    @location = Location.find(params[:location_id])
  end
end
