Rails.application.routes.draw do
  resources :calendar_events
  root "home#index"
  resources :user_accounts
  root "user_accounts#new"

  # render static pages
  controller :pages do
    get ':id', to: 'pages#show', as: 'pages'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
