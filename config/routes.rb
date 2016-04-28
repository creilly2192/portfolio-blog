Rails.application.routes.draw do
  devise_for :users
  resources :posts

  resources :contacts, only: [:new, :create]

  root 'pages#home'

  get 'about', to:'pages#about'

  get 'projects', to:'pages#projects'

  get '*path' => redirect('/')

end
