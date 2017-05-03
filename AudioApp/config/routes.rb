Rails.application.routes.draw do

get '/login' => 'session#new'

post '/login' => 'session#create'

delete '/logout' => 'session#destroy'

resources :users

root to: "pages#home"

get '/about' => "pages#about"

resources :engineers

resources :artists

resources :bookings

end
