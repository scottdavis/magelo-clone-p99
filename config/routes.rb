Magelo::Application.routes.draw do


devise_for :users

resources :profiles

match '/profiles/:id/slots' => 'profiles#slots', :as => 'profile_slot'
get '/items/search' => 'items#search'
get '/search' => 'landing#search'
get '/items/:id' => 'items#show'
get '/item/:name' => 'items#show'
root :to => "landing#index"

end
