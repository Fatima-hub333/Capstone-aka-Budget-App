Rails.application.routes.draw do
  get 'records/index'
  get 'records/show'
  get 'categories/index'
  get 'categories/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :categories, only: [:index, :show] do
    resources :records, only: [:index, :show]
  end
end