class Api::CampaignsController < ApplicationController

  def index
    @user = current_user
    @campaigns = Campaign.where("user_id = #{@user.id}")
    render "index.json.jb"
  end

  def create
    @campaign = Campaign.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      name: params[:name],
      game: params[:game],
      user_id: current_user.id,
    )

    # @user.img_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTabEklZavHRqp-_i-3CxpBH9y44fVm3fWYuQ&usqp=CAU" unless @user.img_url

    if @campaign.save
      render "show.json.jb"
    else
      render json: { errors: @campaign.errors.full_messages }, status: :bad_request
    end
  end


  def show
    @campaign = Campaign.find_by(id:params[:id])
    render "show.json.jb"
  end

  
  def update
    @campaign = Campaign.find_by(id:params[:id])
    unless current_user.id == params[:id].to_i
      render json: { error: "incorrect user"}, status: :unauthorized
    else
      #leaving out user_id, no need to give randomly to other users
      @campaign.start_date = params[:start_date] || @campaign.start_date
      @campaign.end_date = params[:end_date] || @campaign.end_date
      @campaign.name = params[:name] || @campaign.name
      @campaign.game = params[:game] || @campaign.game
      



      if @campaign.save
        render "show.json.jb"
      else
        render json: { errors: @campaign.errors.full_messages }, status: :bad_request
      end
    end
  end
  
  
  def destroy
    @campaign = Campaign.find_by(id:params[:id])
    unless current_user.id == params[:id].to_i
      render json: { error: "incorrect user"}, status: :unauthorized
    else
      @campaign.destroy
      render json: { message: "Campaign destroyed successfully~"}
    end
  end
end
