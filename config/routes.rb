Rails.application.routes.draw do

  devise_for :users

  resources :locations, only: %i[create destroy new update]
  resources :enemies, only: %i[create destroy new update]

  root 'pages#index'
end
