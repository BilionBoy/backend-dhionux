Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :g_paises
      resources :g_estados
    end
  end


  get "up" => "rails/health#show", as: :rails_health_check
end
