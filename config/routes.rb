Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :makes, only: [:index] do
        resources :car_models, only: [:index] do
          resources :cars, only: [:index]
        end
      end
    end
  end
end
