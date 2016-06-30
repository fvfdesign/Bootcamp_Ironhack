Rails.application.routes.draw do

get '/', to: 'site#home'


get '/contact', to: 'site#contact'

get '/say_name/:name', to: 'site#say_name'

get 'calculator', to: 'site#calculator'

post '/calculate', to: 'site#calculate'

get '/projects', to: 'projects#index'

get "/projects/new", to: "projects#new" #new es para forms

get "/projects/:id", to: "projects#show"

post "/projects", to: "projects#create"

get "/projects/:project_id/time_entries", to: "time_entries#index"

get "/projects/:project_id/time_entries/new", to: "time_entries#new"

post "/projects/:project_id/time_entries/", to: "time_entries#create", as: :project_time_entries

get "/projects/:project_id/time_entries/:id/edit", 
to: "time_entries#edit",
as: :edit_project_time_entry

patch "/projects/:project_id/time_entries/:id", 
	to: "time_entries#update", 
	as: :project_time_entry

end


