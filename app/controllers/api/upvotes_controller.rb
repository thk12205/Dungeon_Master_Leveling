class Api::UpvotesController < ApplicationController

  before_action :authenticate_user

  def create
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

  def delete
    # check if current_user.id == upvote.user_id
    # better safe than sorry
    @upvote = Upvote.find_by(id:params[:id])
    @upvote.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end

end
