Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/terms'
  get 'pages/privacy'
  get 'pages/faqs'
  get 'pages/help'

  resources :scriptures
  resources :topics
  root 'topics#index'
end
