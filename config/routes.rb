Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :cities, only: :index
  resources :preferences, only: :index
  resources :sights, only: :show do
    resources :stops, only: :create
  end
  resources :stops, only: :destroy
  resources :itineraries, only: [:show, :index] do
    resources :stops, only: :show
  end
end
