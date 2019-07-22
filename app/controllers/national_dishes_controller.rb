class NationalDishesController < ApplicationController

  def index
    national_dishes = NationalDish.all
    render json: NationalDishSerializer.new(national_dishes)
  end

  def show
    national_dish = NationalDish.find(params[:id])
    render json: NationalDishSerializer.new(national_dish)
  end
  
end
