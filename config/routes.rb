Rails.application.routes.draw do
  devise_for :stores
  devise_for :users
  root to: "boxes#index"
end
