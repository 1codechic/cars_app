class Api::CarsController < ApplicationController

  def index
    @cars = Car.all
    render 'index.json.jbuilder'
  end
end
