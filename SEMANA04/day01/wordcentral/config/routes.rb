Rails.application.routes.draw do


get '/', to: 'site#home'

get '/text_inspections/new', to: 'textinspections#new'

post "/text_inspections", to: "textinspections#create"

end









