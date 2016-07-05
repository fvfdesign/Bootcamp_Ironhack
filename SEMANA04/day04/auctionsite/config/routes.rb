Rails.application.routes.draw do


get '/', to: 'site#home'
get '/products', to: 'site#index'
#get '/products/:id', to: 'site#show'

resources :users do
    resources :products
end
  
   resources :products do
   	resources :bids, only: [:new, :index, :create]
   end
end
