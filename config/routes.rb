Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks',
    passwords: 'users/passwords',
    omniauth_callbacks: 'users/omniauth_callbacks',
  }, :path => '', :path_names => {
    :sign_in => 'login',
    :sign_up => 'register',
    :sign_out => 'logout'
  }

  root :to => redirect("/login")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
