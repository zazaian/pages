Rails.application.routes.draw do
  root 'pages#index'

  get 'pages/index'
  post 'pages/parse_csv'
end
