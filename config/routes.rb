Rails.application.routes.draw do
  resources :tickets
  devise_for :users
  resources :railway_stations
  resources :trains
  resources :routes
  root 'welcome#index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
