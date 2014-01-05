class API::RecipesController < ApplicationController
  class Recipe < :: Recipe
    def as_json(options = {})
      {
        id: id,
        name: name,
        instructions: instructions,
        user: user.try(:name),
        categories: categories.map(&:name)
      }
    end
  end

  def index
    render json: Recipe.all
  end
end