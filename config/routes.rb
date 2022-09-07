Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # resources :cities, only: :index
  resources :preferences, only: :index
  resources :sights, only: :show do
    resources :stops, only: :create
  end
  resources :stops, only: :destroy
  resources :itineraries, only: [:show, :index, :destroy] do
    resources :stops, only: [:show, :index]
  end

  # preference route
  get "/cities", to: "preferences#cities", as: :choose_city
  get "/duration", to: "preferences#duration", as: :choose_duration
  get "/categories", to: "preferences#categories", as: :choose_categories
  get "/sight_sorting", to: "preferences#sight_sorting"
end
