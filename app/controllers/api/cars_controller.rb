class Api::CarsController < ApplicationController

  def index
    @cars = Car.all
    render 'index.json.jbuilder'
  end

  def show
    car_id = params[:id]
    @car = Car.find_by(id: car_id)
    render 'show.json.jbuilder'
  end
end
