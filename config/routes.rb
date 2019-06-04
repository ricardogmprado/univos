Rails.application.routes.draw do
  get 'users/show'
  get 'users/dashboard'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :activities do
  resources :messages, only: [:create, :index]
  resources :appointments, only: [:create, :update]
end

resources :users, only: [:show]

root 'pages#home'

get '/dashboard', to: 'users#dashboard', as: 'dashboard'
end
