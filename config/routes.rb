Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users', sessions: 'sessions' } 
  resources :blog_posts
  root "blog_posts#index"
end
