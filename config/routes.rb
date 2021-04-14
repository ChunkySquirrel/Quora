Rails.application.routes.draw do

<<<<<<< HEAD
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { :registrations => "registrations"}
=======
  devise_for :users, :controllers => { :registrations => "registrations", :confirmations => "confirmations"}
>>>>>>> 5e11c020d0a3417398bd64138ecdf6d3ce2e66aa
    devise_scope :user do
      get 'login', to: 'devise/sessions#new'
    end
    devise_scope :user do
      get 'signup', to: 'devise/registrations#new'
    end
    devise_scope :user do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
  resources :questions do
    resources :answers

end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "questions#index"
end
