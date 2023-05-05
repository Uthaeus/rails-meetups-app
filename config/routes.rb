Rails.application.routes.draw do
  resources :meetups
  
  get 'details', to: 'pages#details'
  
  root "pages#home"
end
