Rails.application.routes.draw do

resources :users

get "/" => "pages#home"

get '/about' => "pages#about"

resources :engineers

resources :artists

resources :bookings

end
