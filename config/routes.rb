Rails.application.routes.draw do
  
  resources :videos
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords',
    :confirmations => 'users/confirmations',
    :unlocks => 'users/unlocks',
  }

  devise_scope :user do
    root to: "home#index"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    delete "logout", :to => "users/sessions#destroy"
    get 'users/:id/mypage', to: 'users#mypage'
    
  end
  get 'training/start', to: 'trainings#start'
  get 'shoulder_training', to: 'shoulder#shoulder_training'
  get 'abdominal_muscle_training', to: 'abdominal_muscle#abdominal_muscle_training'
  get 'leg_training', to: 'leg#leg_training'

  resources :home
  resources :products
end
