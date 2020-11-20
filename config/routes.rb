Rails.application.routes.draw do
  # root 'pages#home' # sets pages home view as root
  root :to => 'pages#home'
  resources :articles # redirects to pages/about view
  # resources :users
  resources :sessions, only: %i[new create destroy]

  get 'about', to: 'pages#about'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
