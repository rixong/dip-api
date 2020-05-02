Rails.application.routes.draw do
 
    namespace :api do
      namespace :v1 do
        resources :users, only: [:create, :index, :update]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
        resources :reservations, only: [:index, :create, :update]
        resources :cabins, only: [:index]
        resources :repairs, only: [:index, :create, :update]
        resources :annual_reports, only: [:index, :show, :create]
        get '/annual_report/current', to: 'annual_reports#current'
      end
    end

end
