Rails.application.routes.draw do
  resources :users
  resources :bookmarks
  resources :sessions

  root "bookmarks#index"
 #  get "log_out" => "sessions#destroy", :as => "log_out"
	# get "log_in" => "sessions#new", :as => "log_in"
	# get "sign_up" => "users#new", :as => "sign_up"
	# root :to => "users#new"
end
