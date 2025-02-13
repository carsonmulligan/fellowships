require 'sidekiq/web'

Rails.application.routes.draw do

  draw :madmin
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
    resources :impersonates do
      post :impersonate, on: :member
      post :stop_impersonating, on: :collection
    end
  end
end
  resources :scholarships, only: [:index, :show]
  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'scholarships#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
