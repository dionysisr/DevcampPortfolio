Rails.application.routes.draw do
  resources :portfolios

  # ============================================
  # 64. How to Implement Custom Routes for Pages in Rails [08:36]
  # get 'pages/home'
  root to: 'pages#home'
  # get 'pages/about'
  get 'about-me', to: 'pages#about'
  # get 'pages/contact'
  get 'contact', to: 'pages#contact'
  # ============================================

  resources :blogs
  # For details on the DSL available within this file, 
  # see http://guides.rubyonrails.org/routing.html
end
