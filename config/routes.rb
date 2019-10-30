Rails.application.routes.draw do
  # resources :briefcases, except: [:show]
  resources :portfolios, controller: 'briefcases', except: [:show]
  get 'portfolio/:id', to: 'briefcases#show', as: 'portfolio_show'

  root to: 'pages#home'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
