Rails.application.routes.draw do
  resources :toppings
  resources :pies
  resources :categories
  resources :ratings
  resources :restaurants
  resources :users, only: [:create, :show]

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  get '/auth/facebook/callback' => 'sessions#create'

  root 'welcome#index'
end
