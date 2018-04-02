Rails.application.routes.draw do
  get '/admin', to: 'admin#index', as: 'admin'

  get '/admin/stuart', as: 'admin_stuart'

  delete '/admin/stuart', to: 'admin#delete_complaint'

  get '/admin/alumini', as: 'admin_alumini'

  get '/stuart', to: 'maps#stuart', as: 'stuart'
  
  get '/stuart/:roomNumber', to: 'maps#stuart_room'
  
  post '/stuart/:roomNumber', to: 'maps#stuart_room_post'

  get '/alumini', to: 'maps#alumini', as: 'alumini'
  
  get '/alumini/:roomNumber', to: 'maps#alumini_room'
  
  post '/alumini/:roomNumber', to: 'maps#alumini_room_post'

  root 'landing#index'

  resources :buildings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
