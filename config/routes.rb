Rails.application.routes.draw do
  get 'messages/create'
  get 'messages/index'
  devise_for :users,
  controllers: { registrations: "registrations", omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :activities do
  resources :messages, only: [:create, :index]
  resources :appointments, only: [:create, :update]
end

resources :users, only: [:show]

root to: 'activities#index'

get '/dashboard', to: 'users#dashboard', as: 'dashboard'
end
