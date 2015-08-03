Rails.application.routes.draw do
  resources :features
  root to: 'visitors#index'
end
