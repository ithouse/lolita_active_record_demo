LolitaActiveRecordDemo::Application.routes.draw do
  devise_for :admins
  
  lolita_for :text_pages

  lolita_for :messages

  lolita_for :sliders

  resources :messages, :path => 'news'
end
