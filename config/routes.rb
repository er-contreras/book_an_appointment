Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :yachts, only: %i[index put patch create show delete] do
        get :getpicture, on: :member
      end
    end
  end
end
