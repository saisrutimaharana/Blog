Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  } 
  resources :blog_posts
  root "blog_posts#index"
end
