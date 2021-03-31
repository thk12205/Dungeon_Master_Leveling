class Api::UpvoteDexsController < ApplicationController
  before_action :authenticate_user

  def create
    @upvote_dex = UpvoteDex.find_by(user_id: current_user.id, article_id: params[:article_id])

    if @upvote_dex
      render json: { message: "Upvote already exists" }, status: :bad_request
    else
      @upvote_dex = UpvoteDex.new(
        user_id: current_user.id, #add current user logic
        article_id: params[:article_id]
        
      )
      if @upvote_dex.save
        render "show.json.jb"
      else
        render json: { errors: @upvote_dex.errors.full_messages }, status: :bad_request
      end
    end

  end

  def delete
    @upvote_dex = UpvoteDex.find_by(user_id: current_user.id, article_id: params[:article_id])
    @upvote_dex.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end

end
