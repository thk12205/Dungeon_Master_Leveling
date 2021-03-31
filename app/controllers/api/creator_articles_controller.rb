class Api::CreatorArticlesController < ApplicationController
  before_action :authenticate_user

  def create
    @creator_article = CreatorArticle.find_by(user_id: current_user.id, article_id: params[:article_id])

    if @creator_article
      render json: { message: "CreatorArticle already exists" }, status: :bad_request
    else
      @creator_article = CreatorArticle.new(
        user_id: current_user.id, #add current user logic
        article_id: params[:article_id]
        
      )
      if @creator_article.save
        render "show.json.jb"
      else
        render json: { errors: @creator_article.errors.full_messages }, status: :bad_request
      end
    end

  end

  def delete
    @creator_article = CreatorArticle.find_by(user_id: current_user.id, article_id: params[:article_id])
    @creator_article.destroy
    render json: { message: "CreatorArticle Destroyed Successfully~"}
  end
end
