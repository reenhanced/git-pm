Rails.application.routes.draw do
  resources :projects do
    post :create_from_repo, as: :create_from_repo
  end

  get '/signup' => 'users#new', as: :signup
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", as: :signout

  root to: "users#new"
end
