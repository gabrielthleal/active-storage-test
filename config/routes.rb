Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: %i[create show] do
      get :avatar, on: :member
    end
  end
end
