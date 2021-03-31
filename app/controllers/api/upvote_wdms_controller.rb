class Api::UpvoteWdmsController < ApplicationController
  before_action :authenticate_user

  def create
    @upvote_wdm = UpvoteWdm.find_by(user_id: current_user.id, article_id: params[:article_id])

    if @upvote_wdm
      render json: { message: "Upvote already exists" }, status: :bad_request
    else
      @upvote_wdm = UpvoteWdm.new(
        user_id: current_user.id, #add current user logic
        article_id: params[:article_id]
        
      )
      if @upvote_wdm.save
        render "show.json.jb"
      else
        render json: { errors: @upvote_wdm.errors.full_messages }, status: :bad_request
      end
    end

  end

  def delete
    @upvote_wdm = UpvoteWdm.find_by(user_id: current_user.id, article_id: params[:article_id])
    @upvote_wdm.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end
end
