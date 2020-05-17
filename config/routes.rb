Rails.application.routes.draw do
  
 #homepage routes
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  # blog
  resources :blogs

  #portfolio
  resources :portfolios

  # setting root path --> ex: localhose:3000/
  root to: 'pages#home'

end
