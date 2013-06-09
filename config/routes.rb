Protomix::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  match "client_login", :to => "home#client_login"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end