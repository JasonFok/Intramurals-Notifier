Rails.application.routes.draw do

  resources :teams do
  	resources :members
  end

  root "teams#index"
end
