Rails.application.routes.draw do
  get 'students/index'
  get 'students/show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "houses#index"
  
  resources "houses", only: %i[index show]
end
