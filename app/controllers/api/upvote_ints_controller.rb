class Api::UpvoteIntsController < ApplicationController
  before_action :authenticate_user

  def create
    @upvote_int = UpvoteInt.find_by(user_id: current_user.id, article_id: params[:article_id])

    if @upvote_int
      render json: { message: "Upvote already exists" }, status: :bad_request
    else
      @upvote_int = UpvoteInt.new(
        user_id: current_user.id, #add current user logic
        article_id: params[:article_id]
        
      )
      if @upvote_int.save
        render "show.json.jb"
      else
        render json: { errors: @upvote_int.errors.full_messages }, status: :bad_request
      end
    end

  end

  def delete
    @upvote_int = UpvoteInt.find_by(user_id: current_user.id, article_id: params[:article_id])
    @upvote_int.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end
end
