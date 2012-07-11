LolitaActiveRecordDemo::Application.routes.draw do
  devise_for :admins
  
  lolita_for :text_pages
end
