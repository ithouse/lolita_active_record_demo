class Lolita::PostsController < Lolita::RestController
  before_create :set_default_params 

  def is_lolita_resource?
   request.env["lolita.mapping"]=Lolita.mappings[:post]  
   true 
  end

  def tags
    render :json => {"tag" => "cat"}
  end

  private

  def set_default_params
    params[:post][:author_id] = current_user.id
  end
end
