Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :activities do
  resources :messages, only: [:create, :index]
  resources :appointments, only: [:create, :update]
end


resources :users, only: [:show]

namespace :dashboard do
  root to: "users#show"
end
end
