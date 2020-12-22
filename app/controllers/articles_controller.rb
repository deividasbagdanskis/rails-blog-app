# frozen_string_literal: true

# Manages actions with articles
class ArticlesController < ApplicationController
  before_action :require_admin
  skip_before_action :require_admin, only: %i[index show]

  def index
    @articles = Article.search(params[:search])
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    @updated_article = article_params

    @updated_article['image'] = nil unless @updated_article['image_file'].nil?

    if @article.update(@updated_article)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :author, :image_file, :excerpt,
                                    :text)
  end

  def require_admin
    if !current_user.nil?
      unless current_user.is_admin?
        render plain: 'You must be log in as admin to access this section',
               status: 403
      end
    else
      render plain: 'You must be log in as admin to access this section',
             status: 403
    end
  end
end
