Rails.application.routes.draw do
  root "flavours#new"
  resources :flavours
end
