class LocationsController < ApplicationController

  def index
    locations = Location.all
    render json: LocationSerializer.new(locations)
  end

  def show
    location = Location.find(params[:id])
    render json: LocationSerializer.new(location)
  end
  
  def update
    location = Location.find(params[:id])
    if location.update(location_params)
      render json: LocationSerializer.new(location)
    else
      render json: location.errors, status: :unprocessable_entity
    end
  end

  private

  def location_params
    params.require(:location).permit(:name)
  end

end
