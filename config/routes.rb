Rails.application.routes.draw do
  resources :posts

  resources :contacts, only: [:new, :create]

  root 'pages#home'

  get 'about', to:'pages#about'

  get 'projects', to:'pages#projects'

  get '*path' => redirect('/')

end
