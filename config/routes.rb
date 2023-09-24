# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # Defines the root path route ('/')
  # root 'articles#index'
  root to: 'main#index'

  # GET /about
  get 'about-us', to: 'about#index', as: :about

  get 'sign-up', to: 'registrations#new'
  post 'sign-up', to: 'registrations#create'

  get 'sign-in', to: 'sessions#new' # display the sign-in form
  post 'sign-in', to: 'sessions#create' #save the new session

  delete 'logout', to: 'sessions#destroy'
end
