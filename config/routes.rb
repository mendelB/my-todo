Rails.application.routes.draw do
  resources :tasks
  resources :user_tasks

  root to: 'home#welcome'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
