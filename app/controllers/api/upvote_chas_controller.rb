class Api::UpvoteChasController < ApplicationController
  before_action :authenticate_user

  def create
    @upvote_cha = UpvoteCha.find_by(user_id: current_user.id, article_id: params[:article_id])

    if @upvote_cha
      render json: { message: "Upvote already exists" }, status: :bad_request
    else
      @upvote_cha = UpvoteCha.new(
        user_id: current_user.id, #add current user logic
        article_id: params[:article_id]
        
      )
      if @upvote_cha.save
        render "show.json.jb"
      else
        render json: { errors: @upvote_cha.errors.full_messages }, status: :bad_request
      end
    end

  end

  def delete
    @upvote_cha = UpvoteCha.find_by(user_id: current_user.id, article_id: params[:article_id])
    @upvote_cha.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end
end
