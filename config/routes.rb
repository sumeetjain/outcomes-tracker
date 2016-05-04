Rails.application.routes.draw do
  resources :cohorts
  resources :schools
  resources :users

  get '/auth/:provider/callback' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  root 'users#index'
end
