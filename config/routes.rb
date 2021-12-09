Rails.application.routes.draw do
  # test
  get '/show', to: 'pasiens#show'

  # pasien routes
  post '/pasien/register', to: 'pasiens#create'
  put '/pasien/update/:id', to: 'pasiens#update'
  post '/login', to: 'pasiens#login'
  get '/auto_login', to: 'pasiens#auto_login'
  get '/profile/:id', to: 'pasiens#showprofile'

  # articles
  get '/article', to: 'articles#index'
  get '/article/detail/:id', to: 'articles#show'
end
