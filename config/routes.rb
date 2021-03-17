Rails.application.routes.draw do
  devise_for :stores, controllers: {
    sessions: 'stores/sessions',
    passwords: 'stores/passwords',
    registrations: 'stores/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root to: "boxes#index"
end
