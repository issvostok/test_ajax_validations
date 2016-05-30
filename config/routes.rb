Rails.application.routes.draw do
  resources :users

  root to: 'main#index', as: :main
  get 'users/new', as: :new_users
  post 'users/validate' => 'users#validate', as: :users_validation
  post 'users/new' => 'users#create'
end
