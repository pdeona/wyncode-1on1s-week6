Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  post '/posts/:id/comments/new' => 'comments#create', as: 'post_comments_create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
