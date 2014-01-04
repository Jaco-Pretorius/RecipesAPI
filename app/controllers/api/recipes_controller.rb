class API::RecipesController < ApplicationController
  def index
    render json: Recipe.all
  end
end