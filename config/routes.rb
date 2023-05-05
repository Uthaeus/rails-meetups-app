Rails.application.routes.draw do
  devise_for :users, path: '', 
    path_names: {  
      sign_in: 'login', 
      sign_out: 'logout', 
      sign_up: 'register', 
      edit: 'profile' 
    }
    
  resources :meetups
  
  get 'details', to: 'pages#details'
  
  root "pages#home"
end
