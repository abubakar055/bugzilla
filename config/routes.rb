Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: "login",sign_up: "register",sign_out: "logout"}
  
  ##get 'pages/home'
  get 'pages/about'


  root to: "pages#home"
end
