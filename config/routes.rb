Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "registrations"}
    devise_scope :user do
      get 'login', to: 'devise/sessions#new'
    end
    devise_scope :user do
      get 'signup', to: 'devise/registrations#new'
    end
    devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
  resources :questions
  resources :answers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "questions#index"
end
