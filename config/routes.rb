Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :videos do
      collection { post :import }
    end
  resources :codes do 
  end
  root 'codes#index'
  get 'track1' => 'pages#track1'
  get 'track2' => 'pages#track2'
end
