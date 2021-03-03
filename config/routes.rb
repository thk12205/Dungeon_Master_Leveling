Rails.application.routes.draw do
  get 'home/index'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    #user
    post "/users" => "users#create"
    # get "/users/:id" => "users#show"
    # update "/users/:id" => "users#update"
    # delete "/users/:id" => "users#destroy"


    #category
    # get "/categories" => "categories#index"
    # get "/categories/:id" => "categories#show"

    #upvote
    # post "/upvotes" => "upvotes#create"
    # delete "/upvotes/:id" => "upvotes#delete"

  end
end
