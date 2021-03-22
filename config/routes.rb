Rails.application.routes.draw do
  get 'home/index'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

    #user
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    #session
    post "/sessions" => "sessions#create"

    #category
    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"

    #article
    post "/articles" => "articles#create"
    get "/articles/:id" => "articles#show"
    patch "/articles/:id" => "articles#update"
    delete "/articles/:id" => "articles#destroy"

    #upvote
    post "/upvotes" => "upvotes#create"
    delete "/upvotes/:article_id" => "upvotes#delete"

    #comments
    post "/comments" => "comments#create"
    # get "/comments/:id" => "comments#show"
    # patch "/comments/:id" => "comments#update"
    delete "/comments/:id" => "comments#destroy"

  end
end
