LolitaActiveRecordDemo::Application.routes.draw do

  resources :pages

  resources :comments

  devise_for :users

  root :to=>"home#index"
  resources :documents
  resources :posts
  
  lolita_for :documents


  lolita_for :posts, :controller=>"lolita/posts"
  lolita_for :comments
  lolita_for :pages
end
