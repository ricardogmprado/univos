Rails.application.routes.draw do
  resources :activities do
    resources :messages, only: [:create, :index]
    resources :appointments, only: [:create, :update]
  end

  resources :users, only: [:show]

  namespace :dashboard do
    root to: "users#show"
  end
end
