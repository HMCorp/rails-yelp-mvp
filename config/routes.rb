Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :create, :new, :edit, :update, :destroy] do
    resources :reviews, only: [ :new, :create ]
  end
  get 'restaurants/:id', to: "restaurants#show", as: :show_restaurant
end
