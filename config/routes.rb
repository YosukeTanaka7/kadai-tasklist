Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/create'
  root to: 'tasks#index'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
#  showを除いて　:index, :new, :create　だけ
  resources :tasks
# ここ何か違う気がする
end
