Rails.application.routes.draw do



get '/contacts/new', to: 'contacts#new'

post '/contacts', to: 'contacts#create'

get '/contacts', to: 'contacts#index'

get '/details', to: 'contacts#details'

end






