Rails.application.routes.draw do
  get '/greetings', to: 'greetings#index'

  match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]

  root "greetings#index"
end
