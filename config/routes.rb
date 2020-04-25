Rails.application.routes.draw do
 
    namespace :api do
      namespace :v1 do
        resources :users, only: [:create, :index]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
        resources :reservations, only: [:index]
        resources :cabins, only: [:index]
      end
    end

end
