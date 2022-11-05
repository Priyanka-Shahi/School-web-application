Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'teachers/index'
  get 'teachers/show'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "houses#index"
  
  resources "houses", only: [:index, :show]

  resources "students", only: [:index, :show]

  resources "teachers", only: [:index, :show]

  
  get 'about', to: 'pages#about', as: 'about'
end
