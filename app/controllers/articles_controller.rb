class ArticlesController < ApplicationController
  def index 
    @articles = Article.published.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @article = Article.find(params[:id])
  end
end
