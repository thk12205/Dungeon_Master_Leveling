class Api::UpvoteStrsController < ApplicationController
  before_action :authenticate_user

  def create
    @upvote_str = UpvoteStr.find_by(user_id: current_user.id, article_id: params[:article_id])

    if @upvote_str
      render json: { message: "Upvote already exists" }, status: :bad_request
    else
      @upvote_str = UpvoteStr.new(
        user_id: current_user.id, #add current user logic
        article_id: params[:article_id]
        
      )
      if @upvote_str.save
        render "show.json.jb"
      else
        render json: { errors: @upvote_str.errors.full_messages }, status: :bad_request
      end
    end

  end

  def delete
    @upvote_str = UpvoteStr.find_by(user_id: current_user.id, article_id: params[:article_id])
    @upvote_str.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end
end
