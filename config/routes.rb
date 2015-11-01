Rails.application.routes.draw do
  
  devise_for :users
  
  resources :movies do
  	collection do
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index] #nesting reviews under movies
  end

  root 'movies#index'
  
end
