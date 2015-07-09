Rails.application.routes.draw do

  get 'about'   => 'pages/about'
  get 'contact' => 'pages/contact'
  get 'terms'   => 'pages/terms'
  get 'privacy' => 'pages/privacy'
  get 'faqs'    => 'pages/faqs'
  get 'help'    => 'pages/help'

  resources :scriptures
  resources :topics
  root 'pages#home'
end
