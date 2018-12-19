Rails.application.routes.draw do
  resources :my_portfolios, except: [:show]
  get 'portfolio/:id', to:'my_portfolios#show', as: 'my_portfolio_show'

  get 'about-me', to:'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home' #setting root to pages/home url (i.e. localhost:3000)
end
