Rails.application.routes.draw do
  resources :menus
  resources :categories
  resources :ratings
  resources :restaurants
  resources :users, only: [:new, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
end
