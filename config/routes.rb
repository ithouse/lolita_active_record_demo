LolitaActiveRecordDemo::Application.routes.draw do
  devise_for :admins
  
  lolita_for :text_pages

  lolita_for :articles

  lolita_for :sliders

  resources :articles, :path => 'articles'
end
