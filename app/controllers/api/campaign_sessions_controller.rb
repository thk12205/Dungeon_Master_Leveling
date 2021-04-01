class Api::CampaignSessionsController < ApplicationController
  def index
    @campaign_sessions = CampaignSession.where("campaign_id = #{params[:campaign_id]}")
    render "index.json.jb"
  end

  def create
    @campaign_session = CampaignSession.new(
      date: params[:date],
      campaign_id: params[:campaign_id],
      name: params[:name],
    )

    # @user.img_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTabEklZavHRqp-_i-3CxpBH9y44fVm3fWYuQ&usqp=CAU" unless @user.img_url

    if @campaign_session.save
      render "show.json.jb"
    else
      render json: { errors: @campaign_session.errors.full_messages }, status: :bad_request
    end
  end


  def show
    @campaign_session = CampaignSession.find_by(id:params[:id])
    render "show.json.jb"
  end

  
  def update
    @campaign_session = CampaignSession.find_by(id:params[:id])
    # unless current_user.id == params[:id].to_i
    #   render json: { error: "incorrect user"}, status: :unauthorized
    # else
      #leaving out user_id, no need to give randomly to other users
    @campaign_session.date = params[:date] || @campaign_session.date
    @campaign_session.campaign_id = params[:campaign_id] || @campaign_session.campaign_id
    @campaign_session.name = params[:name] || @campaign_session.name
    

    if @campaign_session.save
      render "show.json.jb"
    else
      render json: { errors: @campaign_session.errors.full_messages }, status: :bad_request
    end
    # end
  end
  
  
  def destroy
    @campaign_session = CampaignSession.find_by(id:params[:id])
    # unless current_user.id == params[:id].to_i
    #   render json: { error: "incorrect user"}, status: :unauthorized
    # else
      @campaign_session.destroy
      render json: { message: "CampaignSession destroyed successfully~"}
    # end
  end
end
