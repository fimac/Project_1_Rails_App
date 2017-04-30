Rails.application.routes.draw do
  get 'artists/index'

  get 'artists/show'

  get 'artists/new'

  get 'artists/edit'

  get 'engineers/index'

  get 'engineers/show'

  get 'engineers/new'

  get 'engineers/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
