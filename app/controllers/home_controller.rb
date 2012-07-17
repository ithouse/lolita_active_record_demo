class HomeController < ApplicationController
  def index
    @articles = Article.latest.published.limit(5)
    @slider = Slider.first
  end
end
