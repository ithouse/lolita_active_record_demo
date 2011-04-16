class DocumentsController < ApplicationController
  layout "application"

  def index
    @documents=Document.find(:all)
  end

  def show
    @document=Document.find_by_id(params[:id])
  end

end
