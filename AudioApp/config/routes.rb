Rails.application.routes.draw do

get "/" => "pages#home"

get '/about' => "pages#about"

resources :engineers

resources :artists

resources :bookings

end
