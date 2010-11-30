Magelo::Application.routes.draw do |map|

devise_for :users

resources :profiles
resources :reports
get '/items/named/:name' => 'items#show'
get '/items/search' => 'items#search'
post '/item/:id/hide' => 'items#hide', :as => 'item_hide'
resources :items
match '/profiles/:id/slots' => 'profiles#slots', :as => 'profile_slot'
get '/search' => 'landing#search'
get '/reports/non_classic/:id' => 'reports#non_classic', :as => 'report_non_classic'
root :to => 'pages#show', :id => 'home'

end
