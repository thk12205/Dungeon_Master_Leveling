class Api::UsersController < ApplicationController

  #post "/users" => "users#create"

  def create
    @user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end


  # get "/users/:id" => "users#show"

  def show
    @user = User.find_by(id:params[:id])
    render "show.json.jb"
  end
  
  # update "/users/:id" => "users#update"
  
  def update
    @user = User.find_by(id:params[:id])
    @user.username = params[:username] || @user.username
    #no email changing
    #maybe change pw later
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end
  
  # destroy "/users/:id" => "users#destroy"
  
  def destroy
    @user = User.find_by(id:params[:id])
    @user.destroy
    render json: { message: "User destroyed successfully~"}
  end

end
