Rails.application.routes.draw do

  resources :media
  resources :media_types
  resources :prayer_points
  resources :prayers
  resources :scriptures
  get 'about'   => 'pages/about'
  get 'contact' => 'pages/contact'
  get 'terms'   => 'pages/terms'
  get 'privacy' => 'pages/privacy'
  get 'faqs'    => 'pages/faqs'
  get 'help'    => 'pages/help'

  resources :topics
  root 'pages#home'
end
