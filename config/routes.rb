HabitWatch::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks",
    registrations: 'registrations'
  }

  devise_scope :user do
    get '/signup' => 'devise/registrations#new', :as => 'signup'
    get '/login' => 'devise/sessions#new', :as => 'login'
    delete '/logout' => 'devise/sessions#destroy', :as => 'logout'
    get '/settings' => 'devise/registrations#edit', :as => 'settings'
  end

end
