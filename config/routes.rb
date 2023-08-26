Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'registrations'
  } 
  resources :blog_posts, only: [:new, :create]
  root "blog_posts#index"
end
