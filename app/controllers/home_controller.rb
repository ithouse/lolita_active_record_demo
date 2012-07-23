class HomeController < ApplicationController
  def index
    @articles = Article.get_home_page
    @slides = Slide.all
  end
end
