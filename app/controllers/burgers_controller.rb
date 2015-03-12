require 'pry'

class BurgersController < ApplicationController

  def index
    @burgers = Burger.all
    render json: @burgers, status: 200
  end

  def show
    @burger = Burger.find(params[:id])
    render json: @burger, status: 200
  end

  def create
    binding.pry
    @burger = Burger.new(burger_params)
    @burger.ingredients << params[:ingredients] if params[:ingredients]
    if @burger.save
      render json: @burger, status: :created, location: @burger
    else
      render json: @burger.errors, status: :unprocessable_entity
    end
  end

  private

  def burger_params
    params.require(:burger).permit(:name, :ingredients)
  end


end
