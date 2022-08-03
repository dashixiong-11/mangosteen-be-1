Rails.application.routes.draw do
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'

  namespace :api do
    namespace :v1 do
      resources :validation_codes, only: [:create]
      resource :session, only: [:create, :destroy]
      resource :me, only: [:create]
      resources :items #exclude:[:create] 排除某个方法 
      resources :tags
    end
  end
end

