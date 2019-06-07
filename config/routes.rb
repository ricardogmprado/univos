Rails.application.routes.draw do
  get 'messages/create'
  get 'messages/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :activities do
  resources :messages, only: [:create, :index]
  resources :appointments, only: [:create, :update, :index, :destroy]
  # delete 'activities/:id/appointments/:id', as: delete_appointment_path
end

resources :users, only: [:show]

root to: 'pages#home'

get '/dashboard', to: 'users#dashboard', as: 'dashboard'
end
