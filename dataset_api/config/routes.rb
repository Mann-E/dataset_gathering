Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post '/instructions' => 'instructions#new'
  post '/instructions/:id' => 'instructions#update'
  get '/instructions' => 'instructions#all'
end
