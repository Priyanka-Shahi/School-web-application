Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  


  root to: "houses#index"
  
  resources "houses", only: [:index, :show]

  resources "students", only: [:index, :show]

  resources "teachers", only: [:index, :show]

  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  

  resources :search, only: [:index] do
    collection do
      get 'results'
    end
  end  
  
  

end
