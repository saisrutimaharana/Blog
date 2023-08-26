Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'registrations'
  } 
  resources :blog_posts
  devise_for :blog_posts, controllers: {
    registrations: 'blog_posts/registrations'
  }
  root "blog_posts#index"
end
