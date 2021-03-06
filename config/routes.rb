H4F::Application.routes.draw do
  resources :events


  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  resources :stays


  resources :bookings


  resources :groups


  resources :people


  resources :rooms
  
  resources :rooms do
      resources :bookings
  end
    
  resources :hotels
  
  resources :hotels do
      resources :bookings
  end


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  
  get '*path', to: 'home#index'
end