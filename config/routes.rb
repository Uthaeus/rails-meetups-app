Rails.application.routes.draw do
  devise_for :users
  resources :meetups
  
  get 'details', to: 'pages#details'
  
  root "pages#home"
end
