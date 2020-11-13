class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    render "secure_online_experience"
  end
end
