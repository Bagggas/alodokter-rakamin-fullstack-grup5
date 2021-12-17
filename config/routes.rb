Rails.application.routes.draw do
  # test
  get '/show', to: 'pasiens#index'
  get "/test", to: "passwords#test"

  # pasien routes
  post '/pasien/register', to: 'pasiens#create'
  put '/pasien/update/:id', to: 'pasiens#update'
  get "/pasien/detail/:id", to: "pasiens#show"

  post '/login', to: 'pasiens#login'
  get '/auto_login', to: 'pasiens#auto_login'

  # password
  post '/password/forgot', to: 'passwords#forgot'
  get '/password/reset', to: 'passwords#index'
  post '/password/reset', to: 'passwords#reset'

  # password reset success
  get "/password/reset/success", to: "passwords#success"

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
  get "/schedule/today", to: "schedules#show_today"

  # booking
  get "/booking", to: "bookings#index"
  post "/booking/create", to: "bookings#create"
  get "/booking/list", to: "bookings#list"
  get "/booking/detail/:id", to: "bookings#show"

end
