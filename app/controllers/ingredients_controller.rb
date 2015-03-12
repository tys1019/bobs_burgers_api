class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render json: @ingredients, status: 200
  end

end
