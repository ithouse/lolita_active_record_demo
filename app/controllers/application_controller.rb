class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :dostaff

  def dostaff
    I18n.backend.load_translations
  end
end
