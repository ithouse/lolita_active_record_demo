class ArticlesController < ApplicationController
  def index 
    @articles = Article.latest.published.page(params[:page]).per(Article::PER_PAGE)
  end

  def show
    @article = Article.find(params[:id])
  end
end
