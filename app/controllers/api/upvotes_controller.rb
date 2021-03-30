class Api::UpvotesController < ApplicationController

  before_action :authenticate_user

  def create
    @upvote = Upvote.find_by(user_id: current_user.id, article_id: params[:article_id])
    #button checks if upvote exists, if false it sends a create, if true it sends an update, and also send param for which upvote, if exists
    #cases: vote doesn't exist, only one option   if @upvote = false, basic article page = false
    #cases: vote exists, any options exist        if @upvote = true, article show page = true
    #cases: vote doesn't exist, any options exist if @upvote = false, basic article 

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

  def update
    @upvote = Comment.find_by(id:params[:id])
    @upvote.str = params[:str] || @upvote.str
    @upvote.dex = params[:dex] || @upvote.dex
    @upvote.con = params[:con] || @upvote.con
    @upvote.int = params[:int] || @upvote.int
    @upvote.wis = params[:wis] || @upvote.wis
    @upvote.cha = params[:cha] || @upvote.cha

    if @upvote.save
      render "show.json.jb"
    else
      render json: { errors: @upvote.errors.full_messages }, status: :bad_request
    end
    # end
  end

  def delete
    @upvote = Upvote.find_by(user_id: current_user.id, article_id: params[:article_id])
    @upvote.destroy
    render json: { message: "Upvote Destroyed Successfully~"}
  end

end
