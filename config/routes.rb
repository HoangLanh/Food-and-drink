Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"

  namespace :admin do
    root "products#index"
    resources :categories, except: [:show]
    resources :products, except: [:show]
  end
end
