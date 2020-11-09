Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # resources :tracks
      
      resources :users
      post '/login', to: 'auth#create'
      get '/home', to: 'users#home'
      resources :tracklists
      resources :user_tracklists
      resources :tracklist_tracks
      resources :tracks do
        collection do
          get :top_100
          get :random
          get :search
          get :all 
        end
    end
    
  end
end
end
