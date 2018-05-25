Rails.application.routes.draw do

  post "player_profile_token" => "player_profile_token#create"
  post "google_authentication" => "social_auth#google_authentication"

  resources :sponsors do
    resources :ads, shallow: true
  end

  resources :games do
    resources :screenshots, shallow: true
    resources :sub_forums, only: [:index, :create] do
      resources :thread_forums, only: [:index, :create] do
        resources :comments, only: [:index, :create]
      end
    end
  end

  resources :sub_forums, :thread_forums, :comments, only: [:show, :update, :destroy]

  resources :ads_image, only: [:update]
  resources :player_profiles_avatar, only: [:update]

  resources :player_profiles, shallow: true do
    resources :player_game_profiles
  end

  resources :genres, :locations, :pegis, :platforms, :mailboxes, :reports,
            :statistics, :player_games, :rates, :tags, :player_reports

  get "/friend_request/:player_id" => "player_profiles#friend_request"
  get "/remove_friend/:player_id" => "player_profiles#remove_friend"
  get "/usernames_like" => "player_profiles#usernames_like"
  get "/games_like" => "games#games_like"
  get "/suggested_profiles" => "player_profiles#suggested_profiles"
  get "/block_player/:player_id" => "player_profiles#block_player"
  get "/unblock_player/:player_id" => "player_profiles#unblock_player"
  get "/relation_status/:player_id" => "player_profiles#relation_status"
  get "/pairing" => "player_game_profiles#pairing"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
