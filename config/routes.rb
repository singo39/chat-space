Rails.application.routes.draw do
  resources :products
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
 end
 

