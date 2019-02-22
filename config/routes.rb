Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # get 'sessions/new'
  namespace :admin do
    resources :users
  # resoucesで代用
  # get 'users/new'
  # get 'users/edit'
  # get 'users/show'
  # get 'users/index'

  end
  # resoucesで代用
  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  
  root to: 'tasks#index'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
