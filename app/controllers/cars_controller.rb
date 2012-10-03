class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    car = Car.find(params[:id])
    car.update_attributes(params[:car])
    redirect_to cars_url
  end

  def create
    Car.create(params[:car])
    redirect_to cars_url
  end

end
