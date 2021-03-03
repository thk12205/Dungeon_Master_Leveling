class Api::CategoriesController < ApplicationController

  # get "/categories" => "categories#index"
  # get "/categories/:id" => "categories#show"

  def index
    @categories = Category.all
    render "index.json.jb"
  end

end
