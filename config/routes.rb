Rails.application.routes.draw do
  get '/admin', to: 'admin#index', as: 'admin'

  get 'admin/stuart', as: 'admin_stuart'

  get 'admin/alumini', as: 'admin_alumini'

  get '/stuart', to: 'maps#stuart', as: 'stuart'
  
  get '/stuart/:roomNumber', to: 'maps#stuart_room'
  
  post '/stuart/:roomNumber', to: 'maps#stuart_room_post'

  get '/alumini', to: 'maps#alumini', as: 'alumini'

  root 'landing#index'

  resources :buildings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
