Rails.application.routes.draw do
  get 'teachers/index'
  get 'teachers/show'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "houses#index"
  
  resources "houses", only: [:index, :show]

  resources "students", only: [:index, :show]
end
