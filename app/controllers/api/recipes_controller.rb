class API::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
end