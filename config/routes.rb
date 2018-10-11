Rails.application.routes.draw do
 get '/posts', to: 'posts#index'
 get '/posts/new', to: 'posts#new', as: 'new_post'
 post '/posts', to: 'posts#create'
end
