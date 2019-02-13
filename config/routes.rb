Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :update]
      resources :comments, only: [:index, :update]
      resources :users, only: [:index, :update]
      resources :bookmarks, only: [:index, :update]

    end
  end

end
