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
    #checks if current user is trying to edit
    # p "++++++++++++++++++++++++++++++++++++"
    # p "current_user.id: #{current_user.id}"
    # p "params[:id].to_i: #{params[:id].to_i}"
    unless current_user.id == params[:id].to_i
      #render ends the rest of update's function
      render json: { error: "incorrect user"}, status: :unauthorized
    else
      @user.username = params[:username] || @user.username
      @user.email = params[:email] || @user.email
      if params[:password]
        @user.password = params[:password]
        @user.password_confirmation = params[:password_confirmation]
      end
      #no email changing
      #maybe change pw later
      if @user.save
        render "show.json.jb"
      else
        render json: { errors: @user.errors.full_messages }, status: :bad_request
      end
    end
  end
  
  # destroy "/users/:id" => "users#destroy"
  
  def destroy
    @user = User.find_by(id:params[:id])
    #checks if current user is trying to destroy
    # p "++++++++++++++++++++++++++++++++++++"
    # p "current_user.id: #{current_user.id}"
    # p "params[:id].to_i: #{params[:id].to_i}"
    unless current_user.id == params[:id].to_i
      #render ends the rest of update's function
      render json: { error: "incorrect user"}, status: :unauthorized
    else
      @user.destroy
      render json: { message: "User destroyed successfully~"}
    end
  end

end
