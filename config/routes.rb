Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'products#home'

  resources :products do
    resources :reviews
  end

  resources :users do
    resources :reviews
  end
end
