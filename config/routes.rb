Rails.application.routes.draw do
	devise_for :users
  get 'searches/new'
  get 'searches/show'
  root 'searches#show'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tickets, only: [:create, :show]
  resources :search, only: [:show, :new, :edit]

  namespace :admin do
  resources :tickets

  resources :railway_stations do
    patch :update_position, on: :member
  end

  resources :trains do
    resources :carriages, shallow: true
  end
  resources :routes

  end
end
