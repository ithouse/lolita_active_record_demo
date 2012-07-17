class ApplicationController < ActionController::Base
  protect_from_forgery

  unless Rails.env == "development"
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    rescue_from Lolita::RecordNotFound, :with => :redirect_to_lolita_root
  end

  def redirect_to_lolita_root
    redirect_to "/lolita"
  end

  def render_404
    render :file => "public/404.html", :status => 404, :layout => false
  end

end
