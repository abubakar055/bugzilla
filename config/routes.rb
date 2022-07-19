Rails.application.routes.draw do
  resources :project_users
  resources :projects
  resources :bugs
  devise_for :users, path: '', path_names: {sign_in: "login",sign_up: "register",sign_out: "logout"}
  
  ##get 'pages/home'
  get 'pages/about'

  get 'project_users/index'

  root to: "pages#home"
end
