Rails.application.routes.draw do
  resources :services
  resources :roughs
  resources :trims
  resources :people
  resources :houses
  get 'home/index'
  root 'houses#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
