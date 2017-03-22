Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index]
  resources :sessions, only: [:new, :create]
  resources :registrations, only: [:new, :create]
end
