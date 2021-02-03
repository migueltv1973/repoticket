Rails.application.routes.draw do
  resources :tickets
  get 'home/index'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tickets#index" 

  devise_for :users, skip: [:registrations, :passwords], controllers: {
    sessions: 'auth/users/sessions'
}
  

end
