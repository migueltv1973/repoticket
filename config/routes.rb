Rails.application.routes.draw do
  resources :ticket_threads
  resources :tickets

  get 'home/index'

#  get 'respuesta', to: 'respuesta#index'
 # get 'respuesta/new', to: 'respuesta#new'

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tickets#index" 

  devise_for :users, skip: [:registrations, :passwords], controllers: {
    sessions: 'auth/users/sessions'
}
  

end
