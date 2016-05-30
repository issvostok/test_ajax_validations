Rails.application.routes.draw do
  resources :users

  root to: 'main#index', as: :main
  post 'users/validate' => 'users#validate', as: :users_validation
end
