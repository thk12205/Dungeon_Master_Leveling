class Api::ReadsController < ApplicationController
  before_action :authenticate_user

  def create
    @read = Read.find_by(user_id: current_user.id, article_id: params[:article_id])

    if @read
      render json: { message: "Read already exists" }, status: :bad_request
    else
      @read = Read.new(
        user_id: current_user.id, #add current user logic
        article_id: params[:article_id]
        
      )
      if @read.save
        render "show.json.jb"
      else
        render json: { errors: @read.errors.full_messages }, status: :bad_request
      end
    end

  end

  def delete
    @read = Read.find_by(user_id: current_user.id, article_id: params[:article_id])
    @read.destroy
    render json: { message: "Read Destroyed Successfully~"}
  end
end
