class Api::ArticlesController < ApplicationController

  def create
    @article = Article.new(
      title: params[:title], 
      url: params[:url], 
      img_url: params[:img_url],
      source: params[:source], 
      category_id: params[:category_id],
      body: params[:body], 
      video: params[:video],
      creator_id: current_user.id,
    )

    @article.img_url = "https://i.pinimg.com/originals/d6/70/4f/d6704f2c3b42bd706887581ce3d81489.jpg" unless @article.img_url

    if @article.save
      render "show.json.jb"
    else
      render json: { errors: @article.errors.full_messages }, status: :bad_request
    end
  end


  # get "/users/:id" => "users#show"

  def show
    @article = Article.find_by(id:params[:id])
    render "show.json.jb"
  end
  
  # update "/users/:id" => "users#update"
  
  def update
    @article = Article.find_by(id:params[:id])
    #checks if current user is trying to edit
    # p "++++++++++++++++++++++++++++++++++++"
    # p "current_user.id: #{current_user.id}"
    # p "params[:id].to_i: #{params[:id].to_i}"
    # unless current_user.id == params[:id].to_i
    #   #render ends the rest of update's function
    #   render json: { error: "incorrect user"}, status: :unauthorized
    # else 

    @article.title = params[:title] || @article.title
    @article.url = params[:url] || @article.url
    @article.img_url = params[:img_url] || @article.img_url
    @article.source = params[:source] || @article.source
    @article.category_id = params[:category_id] || @article.category_id
    @article.body = params[:body] || @article.body
    @article.video = params[:video] || @article.video

    #no email changing
    #maybe change pw later
    if @article.save
      render "show.json.jb"
    else
      render json: { errors: @article.errors.full_messages }, status: :bad_request
    end
    # end
  end
  
  # destroy "/articles/:id" => "users#destroy"
  
  def destroy
    @article = Article.find_by(id:params[:id])
    #checks if current user is trying to destroy
    # p "++++++++++++++++++++++++++++++++++++"
    # p "current_user.id: #{current_user.id}"
    # p "params[:id].to_i: #{params[:id].to_i}"
    # unless current_user.id == params[:id].to_i
    #   #render ends the rest of update's function
    #   render json: { error: "incorrect user"}, status: :unauthorized
    # else
    @article.destroy
    render json: { message: "User destroyed successfully~"}
    # end
  end
end
