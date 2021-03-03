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
      # render json: { message: "@ created successfully" }, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end


  # get "/users/:id" => "users#show"

  def show
    #@user = User.find_by(id:params[:id])
  end

  # update "/users/:id" => "users#update"

  def update

  end

  # destroy "/users/:id" => "users#destroy"

  def destroy

  end  

end
