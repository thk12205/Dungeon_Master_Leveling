class Api::UpvotesController < ApplicationController

  # post "/upvotes" => "upvotes#create"


  def create
    @upvote = Upvote.new(
      user_id: params[:user_id],
      article_id: params[:article_id]
    )
    if @upvote.save
      render "show.json.jb"
    else
      render json: { errors: @upvote.errors.full_messages }, status: :bad_request
    end
  end
  
  # delete "/upvotes/:id" => "upvotes#delete"
  def delete
    @upvote = Upvote.find_by(id:params[:id])
    @upvote.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end

end
