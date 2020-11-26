Rails.application.routes.draw do
  root :to => 'pages#home' # sets pages home view as root
  resources :articles
  resources :sessions, only: %i[new create destroy] # routes for login and logout

  get 'about', to: 'pages#about' # redirects to pages/about view
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
