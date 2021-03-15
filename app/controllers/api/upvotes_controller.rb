class Api::UpvotesController < ApplicationController

  before_action :authenticate_user

  def create
    @upvote = Upvote.find_by(user_id: current_user.id, article_id: params[:article_id])
    
    if @upvote
      render json: { message: "Upvote already exists" }, status: :bad_request
    else
      @upvote = Upvote.new(
        user_id: current_user.id, #add current user logic
        article_id: params[:article_id]
      )
      if @upvote.save
        render "show.json.jb"
      else
        render json: { errors: @upvote.errors.full_messages }, status: :bad_request
      end
    end

  end

  def delete
    # check if current_user.id == upvote.user_id
    # better safe than sorry
    p "current_user.id = #{current_user.id}"
    p "params[:article_id] = #{params[:article_id]}"
    p "@upvote = #{@upvote}"


    @upvote = Upvote.find_by(user_id: current_user.id, article_id: params[:article_id])
    @upvote.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end

end
