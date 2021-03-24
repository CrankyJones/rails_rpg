Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  resources :locations
  resources :enemies, only: %i[ create destroy new update ]

  unauthenticated do
    devise_scope :user do
      root to: "devise/sessions#new"
    end
  end

  authenticated do
    root 'pages#index'
  end

end






# bare bones

# module ActionDispatch::Routing
#   class Mapper
#     def authenticated(&block)
#       block.call if env['warden'].authenticated?
#     end

#     def unauthenticated(&block)
#       block.call if env['warden'].unauthenticated?
#     end
#   end
# end
