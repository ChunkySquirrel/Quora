Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :accounts
  resources :questions
  resources :answers
  resources :admin
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root 'questions#index'
end
