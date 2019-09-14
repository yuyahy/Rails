Rails.application.routes.draw do

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get 'users/index' => "users#index"

  get "users/:id" => "users#show"





  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/:id/update" => "posts#update"
  post "posts/create" => "posts#create"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/:id/edit" => "posts#edit"
  get "posts/:id" => "posts#show" #posts/XXの全てのURLが該当する（だからpost/indexのルーティングの下に書かないといけない
  get "posts/:id/edit" => "posts#edit"
  get "/" => "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about" => "home#about"
end
