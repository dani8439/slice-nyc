Rails.application.routes.draw do
  resources :toppings
  resources :pies
  resources :categories
  resources :ratings
  resources :restaurants
  resources :users, only: [:create, :show]

  get '/signup' => "users#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
end
