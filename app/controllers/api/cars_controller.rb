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

  def create
    @car = Car.new({
      year: params[:year],
      make: params[:make],
      model: params[:model],
      color: params[:color],
      price: params[:price]
    })
    @car.save
    render 'show.json.jbuilder'
  end
end
