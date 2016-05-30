Rails.application.routes.draw do
  resources :users

  root to: 'main#index', as: :main
  post 'users/new' => 'users#validate'
  get 'users/new', as: :new_users
end
