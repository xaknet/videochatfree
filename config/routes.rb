Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }
  root to: 'home#index'
  post 'online', to: 'home#online'
  post 'offline', to: 'home#offline'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
    delete 'logout', to: 'sessions#destroy'
  end

end
