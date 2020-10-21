Rails.application.routes.draw do
  root 'exchanges#index'
  get '/', to: 'exchanges#index'
  get 'convert', to: 'exchanges#convert'
end