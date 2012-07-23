class ArticlesController < ApplicationController
  def index 
    @articles = Article.get_index(params)
  end

  def show
    @article = Article.find(params[:id])
  end
end
