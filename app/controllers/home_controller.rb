class HomeController < ApplicationController
  def index
    @articles = Article.home_page
    @slider = Slider.home_page
  end
end
