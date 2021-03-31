class Api::UsersController < ApplicationController

  #post "/users" => "users#create"

  def create
    @user = User.new(
      username: params[:username],
      email: params[:email],
      img_url: params[:img_url],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      gold: 0,
      exp: 0,
      str: 10,
      dex: 10,
      con: 10,
      int: 10,
      wis: 10,
      cha: 10,
      armor_rating: 10,
    )

    @user.img_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTabEklZavHRqp-_i-3CxpBH9y44fVm3fWYuQ&usqp=CAU" unless @user.img_url

    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end


  def show
    @user = User.find_by(id:params[:id])
    render "show.json.jb"
  end

  
  def update
    @user = User.find_by(id:params[:id])
    unless current_user.id == params[:id].to_i
      render json: { error: "incorrect user"}, status: :unauthorized
    else
      @user.username = params[:username] || @user.username
      @user.email = params[:email] || @user.email
      @user.img_url = params[:img_url] || @user.img_url
      @user.quote = params[:quote] || @user.quote
      @user.alignment = params[:alignment] || @user.alignment
      @user.games = params[:games] || @user.games
      @user.gold = params[:gold] || @user.gold
      @user.exp = params[:exp] || @user.exp
      @user.str = params[:str] || @user.str
      @user.dex = params[:dex] || @user.dex
      @user.con = params[:con] || @user.con
      @user.int = params[:int] || @user.int
      @user.wis = params[:wis] || @user.wis
      @user.armor_rating = params[:armor_rating] || @user.armor_rating

      if params[:password]
        @user.password = params[:password]
        @user.password_confirmation = params[:password_confirmation]
      end
      #maybe change pw later
      if @user.save
        render "show.json.jb"
      else
        render json: { errors: @user.errors.full_messages }, status: :bad_request
      end
    end
  end
  
  
  def destroy
    @user = User.find_by(id:params[:id])
    unless current_user.id == params[:id].to_i
      render json: { error: "incorrect user"}, status: :unauthorized
    else
      @user.destroy
      render json: { message: "User destroyed successfully~"}
    end
  end

end
