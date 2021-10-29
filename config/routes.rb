Rails.application.routes.draw do
  root 'home#index'
  resources :works
  resources :lists
end