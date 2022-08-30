Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # resources :cities, only: :index
  resources :preferences, only: :index
  resources :sights, only: :show do
    resources :stops, only: :create
  end
  resources :stops, only: :destroy
  resources :itineraries, only: [:show, :index] do
    resources :stops, only: :show
  end

  # preference route
  get "/cities", to: "preferences#cities", as: :choose_city
  get "/duration", to: "preferences#duration", as: :choose_duration
  get "/categories", to: "preferences#categories", as: :choose_categories

  # we have big problem here!!
  # get "/sights_home", to: "sights#home", as: :choose_categories
end
