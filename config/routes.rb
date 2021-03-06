Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :users, only: [:show]
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
end
