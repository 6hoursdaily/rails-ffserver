Rails.application.routes.draw do
  get '/server' => 'home#server', as: "server"
  get '/dashboard' => 'home#dashboard', as: "dashboard"
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
