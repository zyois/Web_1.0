Rails.application.routes.draw do
  root 'home#index'
  resources :works do
    resources :serieses do
      resources :seasons
    end
  end
  resources :lists
end