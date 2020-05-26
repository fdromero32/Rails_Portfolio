Rails.application.routes.draw do
  
 #homepages routes
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  # blog
  resources :blogs

  #portfolio
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # setting root path --> ex: localhost:3000/
  root to: 'pages#home'

end
