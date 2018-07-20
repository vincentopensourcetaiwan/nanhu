Rails.application.routes.draw do
  resources :registration_forms
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
