Rails.application.routes.draw do
  devise_for :users
  root 'static#index'
  # To display user profile pages ONLY, devise handles the rest
  get '/users/most_active' => 'users#most_active'
  resources :users, only: [:show, :index]
  resources :trails do
    # You would only create a hike through a trail show page
    # You would always need a trail to create a hike, anyway
    resources :hikes
  end


end
