Rails.application.routes.draw do
  devise_for :accounts
  resources :questions
  resources :answers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root 'questions#index'
end
