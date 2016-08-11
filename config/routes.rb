Rails.application.routes.draw do
  resources :photos
  resources :activity_records
  resources :membership_fees
  resources :membership_types
  mount ActionCable.server => '/cable'

  resources :qr_codes, only:[:new, :create]
  devise_for  :users, controllers: { registrations: :registrations }

  get 'qr_codes/new'

  get 'qr_codes/create'

  get 'activities_attending', to: "activities#activities_attending"
  
  post 'create_activity_record', to: "activity_records#create_activity_record", as: :create_activity_record
  get 'menu', to: "users#menu"


  root "statics#homepage"

  post "activities/:id/book", to:"activities#book", as: :activity_book
  delete 'activities/:id/cancel', to: "activities#cancel", as: :activity_cancel
  
  resources :activities


  resources :users, only: [:index, :show]

  #the do block creates a sub route for messages - the messages route is inside the converstaion block 
  resources :conversations, only: [:index, :create] do
  resources :messages, only: [:index, :create]
  end

  get "home", to: "statics#homepage"
  get "about", to: "statics#about"
  get "contact_us", to:"statics#contact_us"

end