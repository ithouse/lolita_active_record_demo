LolitaActiveRecordDemo::Application.routes.draw do
  devise_for :admins

  root :to => 'home#index'
  
  lolita_for :text_pages
  lolita_for :articles
  lolita_for :sliders
  lolita_for :admins

  resources :articles, :path => 'articles'
  resources :text_pages
end
