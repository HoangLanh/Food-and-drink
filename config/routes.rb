Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  resources :products
  namespace :admin do
    root "products#index"
    resources :categories
    resources :products
  end
end
