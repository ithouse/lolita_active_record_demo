class HomeController < ApplicationController
  def index
    @articles = Article.home_page
    @slides = Slide.all
  end
end
