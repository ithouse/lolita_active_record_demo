
class PostsController < ApplicationController
  layout "application"

  def show
    @post = Post.find_by_id(params[:id])
  end



private

def is_lolita_resource?
   request.env["lolita.mapping"]=Lolita.mappings[:post]  
   true 
end

  def index
    @posts = Post.find(:all)

  end

end
