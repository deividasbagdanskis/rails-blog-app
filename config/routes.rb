# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home' # sets pages home view as root
  resources :articles do
    resources :comments
  end

  get 'about', to: 'pages#about' # redirects to pages/about view

  get 'login', to: 'login#login_form', as: 'login'
  post 'login', to: 'login#login', as: 'login_post'
  get 'logout', to: 'login#logout', as: 'logout'

  get 'register', to: 'register#register_form', as: 'register'
  post 'register', to: 'register#register', as: 'register_post'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
