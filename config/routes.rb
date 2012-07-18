LolitaActiveRecordDemo::Application.routes.draw do
  devise_for :admins

  root :to => 'home#index'
  
  lolita_for :text_pages
  lolita_for :articles
  lolita_for :slides
  lolita_for :admins

  resources :articles, :path => 'articles'
  match ':slug' => 'text_pages#show', :as => 'text_page', :via => :get, :constraints => lambda{|request|
    request.params[:slug].to_s != "lolita"
  }
  
end
