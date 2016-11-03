Rails.application.routes.draw do
  devise_for :users
  resources :directors do 
  	resources :comments, only: [:create], module: :directors
  end
  
  resources :films do 
  	resources :comments, only: [:create], module: :films
  end

  resources :actors do
  	resources :comments, only: [:create], module: :actors
  end

  root 'films#index' 

end
