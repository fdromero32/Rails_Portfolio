Rails.application.routes.draw do
  
 #homepage routes
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  
  # blog
  resources :blogs

  #portfolio
  resources :portfolios
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
