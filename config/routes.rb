Rails.application.routes.draw do
  #Devise Routes
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  #homepages routes
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  # blog
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  #portfolio
  resources :portfolios, except: [:show] do
    member do
      patch :move
    end
  end
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'react-items', to: 'portfolios#react'

  # setting root path --> ex: localhost:3000/
  root to: 'pages#home'

end
