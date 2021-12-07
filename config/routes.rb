Rails.application.routes.draw do
  # test
  get '/show', to: 'pasiens#show'

  # pasien routes
  post '/register-pasien', to: 'pasiens#create'
  post '/login', to: 'pasiens#login'
  get '/auto-login', to: 'pasiens#auto_login'

  # articles
  get "/article", to: "articles#index"
  get "/article/detail/:id", to: "articles#show"
end
