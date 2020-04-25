Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'movies#index'
  resources :texts
  resources :aws_texts, only: [:index,:show]
  resources :movies,    only: [:index]
  resources :questions, only: [:index, :create, :show] do
    resources :solutions, only: [:create]
  end
end
