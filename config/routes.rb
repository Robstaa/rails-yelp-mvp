Rails.application.routes.draw do

  root(to: 'restaurants#index')

  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:new, :create]
  end
end
