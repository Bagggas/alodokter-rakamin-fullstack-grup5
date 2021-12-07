Rails.application.routes.draw do
  resource :pasiens, only: [:create]
  post "/login", to: "pasiens#login"
  get "/auto_login", to: "pasiens#auto_login"
end
