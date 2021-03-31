class Api::ArticleMarkersController < ApplicationController

  def index
    @article_markers = ArticleMarker.where("campaign_session_id = #{params[:campaign_session_id]}")
    render "index.json.jb"
  end

  def create
    @article_marker = ArticleMarker.new(
      date: params[:date],
      campaign_id: params[:campaign_id],
      name: params[:name],
    )

    if @article_marker.save
      render "show.json.jb"
    else
      render json: { errors: @article_marker.errors.full_messages }, status: :bad_request
    end
  end


  def show
    @article_marker = ArticleMarker.find_by(id:params[:id])
    render "show.json.jb"
  end

  
  def update
    @article_marker = ArticleMarker.find_by(id:params[:id])
    unless current_user.id == params[:id].to_i
      render json: { error: "incorrect user"}, status: :unauthorized
    else
      #leaving out user_id, no need to give randomly to other users
      @article_marker.date = params[:date] || @article_marker.date
      @article_marker.campaign_id = params[:campaign_id] || @article_marker.campaign_id
      @article_marker.name = params[:name] || @article_marker.name
      

      if @article_marker.save
        render "show.json.jb"
      else
        render json: { errors: @article_marker.errors.full_messages }, status: :bad_request
      end
    end
  end
  
  
  def destroy
    @article_marker = ArticleMarker.find_by(id:params[:id])
    unless current_user.id == params[:id].to_i
      render json: { error: "incorrect user"}, status: :unauthorized
    else
      @article_marker.destroy
      render json: { message: "ArticleMarker destroyed successfully~"}
    end
  end
end
