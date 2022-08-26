# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'products/index'
  get 'products/show'
  get 'welcome/index'
  resources :articles do
    member do
      get :preview
    end
    collection do
      get :all
    end
    resources :comments
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
