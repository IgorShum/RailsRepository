Rails.application.routes.draw do
	devise_for :users
  get 'searches/new'
  get 'searches/show'

  resources :tickets, only: [:create, :show]
  resources :search, only: [:show, :new, :edit]
  resources :railway_stations
  resources :trains
  resources :routes
  root 'welcome#index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
