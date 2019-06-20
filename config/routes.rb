Rails.application.routes.draw do


  resources :restaurant_categories, only: [:index]
  resources :pie_restaurants, only: [:index]
  resources :pie_toppings, only: [:index]
  resources :pie_cheeses, only: [:index]
  resources :categories
  resources :cheeses, only: [:index, :show]
  resources :crusts, only: [:index, :show]
  resources :pies
  resources :sauces, only: [:index, :show]
  resources :toppings, only: [:index, :show]
  resources :restaurant_ratings, only: [:index]

  resources :restaurants, only: [:new, :index, :edit, :create, :show, :update] do
    resources :restaurant_ratings, only: [:new, :create, :edit, :update, :destroy, :show]
  end


  resources :users, only: [:create, :show]

  get '/signup', :to => 'users#new'
  get '/login', :to => 'sessions#new'
  post '/login', :to => 'sessions#create'
  get '/auth/facebook/callback', :to => 'sessions#create'
  delete '/logout', :to => 'sessions#destroy'

  root 'welcome#index'
end
