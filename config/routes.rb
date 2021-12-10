Rails.application.routes.draw do
  root 'pasiens#index'
  # test
  get '/show', to: 'pasiens#show'

  # pasien routes
  post '/pasien/register', to: 'pasiens#create'
  put '/pasien/update/:id', to: 'pasiens#update'
  post '/login', to: 'pasiens#login'
  get '/auto_login', to: 'pasiens#auto_login'

  # password
  post 'password/forgot', to: 'passwords#forgot'
  post 'password/reset', to: 'passwords#reset'

  # articles
  get '/article', to: 'articles#index'
  post '/article/new', to: 'articles#create'
  get '/article/detail/:id', to: 'articles#show'
  # article search
  get '/article/search/:search', to: 'articles#search'

  # doctors
  get "/doctor", to: "doctors#index"
  get "/doctor/detail/:id", to: "doctors#show"
  get "/doctor/search/:search", to: "doctors#search"

  #schedules
  get "/schedule", to: "schedules#index"
  post "/schedule/new", to: "schedules#create"
  get "/schedule/detail/:id", to: "schedules#show"

end
