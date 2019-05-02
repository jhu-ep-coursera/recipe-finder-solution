class RecipesController < ApplicationController
  def index
    @search = params['search'] || 'chocolate'

    @page_number = params['page']
    @page_number = 1 if @page_number.to_i < 1

    @recipes = Recipe.for(@search, @page_number)
  end
end
