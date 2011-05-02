LolitaActiveRecordDemo::Application.routes.draw do

  devise_for :users

  root :to=>"home#index"
  resources :documents
  resources :posts
  
  lolita_for :documents
  lolita_for :posts
 
end
