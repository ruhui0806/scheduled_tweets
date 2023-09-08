# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  # Defines the root path route ('/')
  # root 'articles#index'
  root to: 'main#index'

  # GET /about
  get 'about-us', to: 'about#index', as: :about


end
