class HomeController < ApplicationController
  def index
    @articles = Article.latest.published.limit(5)
  end
end
