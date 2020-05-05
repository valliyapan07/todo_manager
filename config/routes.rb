Rails.application.routes.draw do
  resources :users
  resources :todos
  get "/", to: "home#index"
  get "/sign_in", to: "sessions#new", as: :new_sessions
  post "/sign_in", to: "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
end
