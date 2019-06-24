Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#index"

  resources :application

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end
