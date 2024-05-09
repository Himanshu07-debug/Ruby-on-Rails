Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get 'home/index'
  ##root 'home#index'  ## '#' symbol to denote the relationship between the controller and action when specifying routes.
  get 'home/about'
  root 'friends#index'

  get "up" => "rails/health#show", as: :rails_health_check

end
