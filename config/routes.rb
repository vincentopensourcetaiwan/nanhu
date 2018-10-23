Rails.application.routes.draw do
  resources :registration_form1s
  resources :registration_form_nikis
  resources :registration_formtests
  resources :registration_form_test_abcs
  resources :registration_forms
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
