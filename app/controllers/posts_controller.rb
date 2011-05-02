class PostsController < Lolita::RestController
 
 before_create :set_default_params
 
  def show
  end


private

def is_lolita_resource?
   request.env["lolita.mapping"]=Lolita.mappings[:post]  
   true 
  end


def set_default_params
  debugger
  a=1
end

end
