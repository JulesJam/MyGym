Rails.application.routes.draw do


  resources :qr_codes, only:[:new, :create]
 

  get 'qr_codes/new'

  get 'qr_codes/create'

  get 'activities_attending', to: "activities#activities_attending"


  root "statics#homepage"

  post "activities/:id/book", to:"activities#book", as: :activity_book
  resources :activities

  devise_for :users
  resources :users, only: [:index, :show]

  #the do block creates a sub route for messages - the messages route is inside the converstaion block 
  resources :conversations, only: [:index, :create] do
  resources :messages, only: [:index, :create]
  end

  get "home", to: "statics#homepage"
  get "about", to: "statics#about"
  get "contact_us", to:"statics#contact_us"
end