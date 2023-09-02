Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users' } 
  resources :blog_posts
  root "blog_posts#index"
end
