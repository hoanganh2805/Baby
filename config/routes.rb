require 'sidekiq/web'

Rails.application.routes.draw do
  resources :menus
  resources :statuses
  resources :orders
  resources :categories
  resources :customers
  resources :suppliers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :books
  resources :subjects
  resources :englishes
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to:'baby#home'
end
