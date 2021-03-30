class Api::CommentsController < ApplicationController



  def index
    @comments = Comment.all
    render "index.json.jb"
  end

  def create
    @comment = Comment.new(
      user_id: current_user.id,
      article_id: params[:article_id], 
      body: params[:body],
    )
    if @comment.save
      render "show.json.jb"
    else
      render json: { errors: @comment.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @comment = Comment.find_by(id:params[:id])
    @comment.body = params[:body] || @comment.body

    if @comment.save
      render "show.json.jb"
    else
      render json: { errors: @comment.errors.full_messages }, status: :bad_request
    end
    # end
  end

  
  def destroy
    @comment = Comment.find_by(id:params[:id])
    @comment.destroy
    render json: { message: "Comment destroyed successfully~"}
  end


end
