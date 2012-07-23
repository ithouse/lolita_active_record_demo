class HomeController < ApplicationController
  def index
    @articles = Article.get_home_page
    @slider = Slider.new
  end
end
