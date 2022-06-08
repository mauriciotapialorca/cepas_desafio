Rails.application.routes.draw do
  resources :jobstittles
  resources :magazines
  resources :cenologists
  resources :winestrains
  resources :strains
  resources :wines
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
