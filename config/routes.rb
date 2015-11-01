Rails.application.routes.draw do
  
  devise_for :users
  
  resources :movies do
  	resources :reviews, except: [:show, :index] #nesting reviews under movies
  end

  root 'movies#index'
  
end
