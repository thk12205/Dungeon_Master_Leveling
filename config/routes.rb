Rails.application.routes.draw do
  get 'home/index'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    #user
    # create POST
    # show GET
    # update PUT
    # destroy DELETE
    post "/users" => "users#create"
    # get "/users/:id" => "users#show"
    # update "/users/:id" => "users#update"
    # destroy "/users/:id" => "users#destroy"


    #category
    # index GET
    # show GET
    # get "/categories" => "categories#index"
    # get "/categories/:id" => "categories#show"

    #upvote
    # create POST
    # destroy DELETE
    # post "/upvotes" => "upvotes#create"
    # delete "/upvotes/:id" => "upvotes#delete"

  end
end
