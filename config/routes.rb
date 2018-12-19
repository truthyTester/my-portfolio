Rails.application.routes.draw do
  resources :my_portfolios

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home' #setting root to pages/home url (i.e. localhost:3000)
end
