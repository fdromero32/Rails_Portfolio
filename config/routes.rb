Rails.application.routes.draw do
  
 #homepage routes
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  
  # blog
  resources :blogs

  #portfolio
  resources :portfolios

end
