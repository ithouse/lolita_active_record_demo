class ArticlesController < ApplicationController
  def index 
    @articles = Article.get_index
  end

  def show
    @article = Article.find(params[:id])
  end
end
