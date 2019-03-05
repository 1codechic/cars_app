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

  def update
    car_id = params[:id]
    @car = Car.find_by(id: car_id)
    @car.year = params[:year] || @car.year
    @car.make = params[:make] || @car.make
    @car.model = params[:model] || @car.model
    @color = params[:color] || @car.color
    @price = params[:price] || @car.price
    @car.save
    render 'show.json.jbuilder'
  end
end
