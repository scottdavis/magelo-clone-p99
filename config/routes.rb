Magelo::Application.routes.draw do |map|

devise_for :users

resources :profiles

match '/profiles/:id/slots' => 'profiles#slots', :as => 'profile_slot'
get '/items/search' => 'items#search'
get '/search' => 'landing#search'
get '/items/:name' => 'items#show'
get '/items/search' => 'items#search'
get '/item/:id' => 'items#show', :as => 'item'
get '/reports/non_classic/:id' => 'reports#non_classic', :as => 'report_non_classic'
root :to => 'pages#show', :id => 'home'

end
