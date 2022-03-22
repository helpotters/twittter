Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :tweets
  resources :users, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'tweets#index'
end
