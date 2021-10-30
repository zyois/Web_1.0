Rails.application.routes.draw do
  root 'home#index'
  resources :works
  resources :serieses
  resources :seasons
  resources :lists
end