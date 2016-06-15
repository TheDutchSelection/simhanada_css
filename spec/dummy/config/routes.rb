Rails.application.routes.draw do

  get 'showcase', controller: 'showcase', action: 'index'
  get 'showcase/:action', controller: 'showcase'

  root 'showcase#index'

end
