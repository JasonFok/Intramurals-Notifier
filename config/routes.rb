Rails.application.routes.draw do

  devise_for :users
  resources :teams do
  	resources :members
  end

  resources :teams do
  	resources :games
  end

  root "teams#index"
end
