Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  resources :application
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
