Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "home#index"

  # Defines the routes for the images controller
  resources :images
  post 'images/create'

  # Defines devise_for routes for users
  devise_for :users, :controllers => { :registrations => 'registrations' }

  
  
end

