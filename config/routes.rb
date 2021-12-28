Rails.application.routes.draw do
  root 'products#index'
  resources :products , only: [:show] do
    collection do
      post :'create_many'
    end
  end
  resources :dashboard , only: [:index]
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
