Rails.application.routes.draw do

get '/login' => 'session#new'

post '/login' => 'session#create'

delete '/logout' => 'session#destroy'

resources :users

get "/" => "pages#home"

get '/about' => "pages#about"

resources :engineers

resources :artists

resources :bookings

end
