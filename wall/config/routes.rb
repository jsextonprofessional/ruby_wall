Rails.application.routes.draw do
  # get 'users/new'
  # get 'users/create'
  resources :users
  resources :messages
end
