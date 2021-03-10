Rails.application.routes.draw do
  resources :gratitudes
  resources :freewrites
  resources :users
  post "login", to: "authentication#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
