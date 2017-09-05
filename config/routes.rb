Rails.application.routes.draw do
  
  devise_for :users, :path => 'sistema', :path_names => {:sign_in => 'entra', :sign_out => 'sair', :sign_up => 'cadastrar'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  
end
