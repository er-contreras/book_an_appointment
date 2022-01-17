Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :yachts
      post '/yacht', to: 'yachts#show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
