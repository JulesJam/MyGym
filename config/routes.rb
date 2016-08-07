Rails.application.routes.draw do

 
  resources :activities
  devise_for :users


  root "statics#homepage"

  get  "secure", to:"activities#index"

  get "login_data", to: "secure#login_data"


 
  
  get "home", to:'statics#homepage'

  get "about", to: 'statics#about'

  get "contact_us", to:'statics#contact_us'

  get "user_list", to:'users#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
