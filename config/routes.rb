Rails.application.routes.draw do
<<<<<<< HEAD
  resources :registration_form1s
  resources :registration_form_nikis
=======
  resources :registration_formtests
  resources :registration_form_test_abcs
>>>>>>> 33afe6f172d8d12a095dce44bb03c4138d33611d
  resources :registration_forms
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
