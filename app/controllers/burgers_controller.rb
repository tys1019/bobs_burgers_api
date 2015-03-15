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
    @burger = Burger.new(burger_params)

    @burger.add_ingredients(params) if params['burger']["ingredients"]

    @burger.ingredients.each do |ingredient|
      @burger.price = @burger.price + ingredient.price if ingredient.price
    end
    
    if @burger.save
      render json: @burger, status: :created, location: @burger
    else
      render json: @burger.errors, status: :unprocessable_entity
    end
  end

  private

  def burger_params
    params.require(:burger).permit(:name, :ingredients, :price)
  end


end
