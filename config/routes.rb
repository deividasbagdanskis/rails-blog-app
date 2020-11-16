Rails.application.routes.draw do
  # sets pages home view as root
  root 'pages#home'

  resources :articles # redirects to pages/about view
  get 'about', to: 'pages#about'
  get 'login', to: 'pages#login' # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
