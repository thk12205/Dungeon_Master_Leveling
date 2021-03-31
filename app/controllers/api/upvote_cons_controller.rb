class Api::UpvoteConsController < ApplicationController
  before_action :authenticate_user

  def create
    @upvote_con = UpvoteCon.find_by(user_id: current_user.id, article_id: params[:article_id])

    if @upvote_con
      render json: { message: "Upvote already exists" }, status: :bad_request
    else
      @upvote_con = UpvoteCon.new(
        user_id: current_user.id, #add current user logic
        article_id: params[:article_id]
        
      )
      if @upvote_con.save
        render "show.json.jb"
      else
        render json: { errors: @upvote_con.errors.full_messages }, status: :bad_request
      end
    end

  end

  def delete
    @upvote_con = UpvoteCon.find_by(user_id: current_user.id, article_id: params[:article_id])
    @upvote_con.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end
end
