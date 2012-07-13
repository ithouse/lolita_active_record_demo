LolitaActiveRecordDemo::Application.routes.draw do
  devise_for :admins

  root :to => 'home#index'
  
  lolita_for :text_pages

  lolita_for :articles

  lolita_for :sliders

  resources :articles, :path => 'articles'
end
