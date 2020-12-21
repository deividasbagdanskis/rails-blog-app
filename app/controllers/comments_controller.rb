# frozen_string_literal: true

# Manages actions with comments
class CommentsController < ApplicationController
  before_action :require_login

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @comment.article = @article
    @comment.user = current_user
    @comment.username = current_user_username

    if @comment.save
      redirect_to article_path(@article)
    else
      redirect_to(article_path(@article), flash: { error: @comment.errors })
    end
  end

  def destroy
    article = Article.find(params[:article_id])

    @comment = article.comments.find(params[:id])
    @comment.destroy

    redirect_to article_path(article)
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def require_login
    render plain: 'You must be log in to access this section', status: 403 unless current_user.nil?
  end
end
