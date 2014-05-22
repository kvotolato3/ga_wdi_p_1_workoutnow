Rails.application.routes.draw do
  devise_for :users
  root 'exercises#index'
  resources :exercises
  resources :workouts
end
