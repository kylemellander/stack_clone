Rails.application.routes.draw do
  resources :posts
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'posts#index'

  resources :users
  resources :sessions
end
