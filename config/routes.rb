Rails.application.routes.draw do
  resources :vulnerabilities
  resources :packages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/package/health/:packagename/:version' => 'package#index'


  get '/packages' => 'package#index'

end
