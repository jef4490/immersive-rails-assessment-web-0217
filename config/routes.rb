Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show] do
    resources :appearances, only: [:new, :create]
  end
  resources :episodes, only: [:index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :registrations, only: [:new, :create]
end
