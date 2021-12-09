Rails.application.routes.draw do
  # test
  get '/show', to: 'pasiens#show'

  # pasien routes
  post '/pasien/register', to: 'pasiens#create'
  put '/pasien/update/:id', to: 'pasiens#update'
  post '/login', to: 'pasiens#login'
  get '/auto_login', to: 'pasiens#auto_login'

  # articles
  get '/article', to: 'articles#index'
  get '/article/detail/:id', to: 'articles#show'

  # detaildokter
  get "/detaildokter", to:"detaildokters#show"

  # listdokter
  get "/listdokter", to:"listdokters#show"

end
