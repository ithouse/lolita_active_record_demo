class HomeController < ApplicationController
  def index
    @articles = Article.latest.published.limit(Article::SHOW_IN_HOME_PAGE)
  end
end
