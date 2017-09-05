Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  resources :application
  mount RailsAdmin::Engine => '/', as: 'rails_admin'


    
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
    get '/perfil' => 'devise/registrations#edit'
    get '/novo' => 'devise/registrations#new'
    get '/user' => 'user#index'
  end
  
end
