Rails.application.routes.draw do

  root to: 'application#index'
  get "/auth/strava", as: :sign_in_with_strava
  # get '/auth/:strava/callback', to: 'sessions#create'
  get "/auth/:strava/callback", to: "callbacks#index"
  post "/customize", to: "callbacks#customize"
end
