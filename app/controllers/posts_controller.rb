class PostsController < ApplicationController
  layout "application"

  def show
    @post = Post.find_by_id(params[:id])
  end

  def index
    @posts = Post.find(:all)
  end

end
