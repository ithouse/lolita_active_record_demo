class TextPagesController < ApplicationController
  def show
    @text_page = TextPage.find(params[:slug])
  end
end
