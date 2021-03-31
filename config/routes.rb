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
    get "/categories/:slug" => "categories#show"

    #article
    post "/articles" => "articles#create"
    get "/articles/:id" => "articles#show"
    patch "/articles/:id" => "articles#update"
    delete "/articles/:id" => "articles#destroy"

    #campaign
    get "/campaigns" => "campaigns#index"   
    post "/campaigns" => "campaigns#create"
    get "/campaigns/:id" => "campaigns#show"
    patch "/campaigns/:id" => "campaigns#update"
    delete "/campaigns/:id" => "campaigns#destroy"
    #campaign session
    get "/campaign_sessions" => "campaign_sessions#index"   
    post "/campaign_sessions" => "campaign_sessions#create"
    get "/campaign_sessions/:id" => "campaign_sessions#show"
    patch "/campaign_sessions/:id" => "campaign_sessions#update"
    delete "/campaign_sessions/:id" => "campaign_sessions#destroy"
    #article marker
    get "/article_markers" => "article_markers#index"   
    post "/article_markers" => "article_markers#create"
    get "/article_markers/:id" => "article_markers#show"
    patch "/article_markers/:id" => "article_markers#update"
    delete "/article_markers/:id" => "article_markers#destroy"

    #upvote
    post "/upvotes" => "upvotes#create"
    delete "/upvotes/:article_id" => "upvotes#delete"
    #upvote
    post "/upvote_strs" => "upvote_strs#create"
    delete "/upvote_strs/:article_id" => "upvote_strs#delete"
    #upvote
    post "/upvote_dexs" => "upvote_dexs#create"
    delete "/upvote_dexs/:article_id" => "upvote_dexs#delete"
    #upvote
    post "/upvote_cons" => "upvote_cons#create"
    delete "/upvote_cons/:article_id" => "upvote_cons#delete"
    #upvote
    post "/upvote_ints" => "upvote_ints#create"
    delete "/upvote_ints/:article_id" => "upvote_ints#delete"
    #upvote
    post "/upvote_wdms" => "upvote_wdms#create"
    delete "/upvote_wdms/:article_id" => "upvote_wdms#delete"
    #upvote
    post "/upvote_chas" => "upvote_chas#create"
    delete "/upvote_chas/:article_id" => "upvote_chas#delete"

    #read
    post "/reads" => "reads#create"
    delete "/reads/:article_id" => "reads#delete"
    #creator_article
    post "/creator_articles" => "creator_articles#create"
    delete "/creator_articles/:article_id" => "creator_articles#delete"

    #comments
    get "/comments" => "comments#index"    
    post "/comments" => "comments#create"
    # get "/comments/:id" => "comments#show"
    patch "/comments/:id" => "comments#update"
    delete "/comments/:id" => "comments#destroy"



  end
end
