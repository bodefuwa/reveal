Rails.application.routes.draw do
  resources :scriptures
  resources :topics
  root 'topics#index'
end
