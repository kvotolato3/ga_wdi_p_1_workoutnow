Rails.application.routes.draw do
  root 'exercises#index'
  devise_for :users

  resources :exercises
  resources :workouts
end
