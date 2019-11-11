Rails.application.routes.draw do
  root to: 'properties#index'

  resources :properties, except: [:destroy]
end
