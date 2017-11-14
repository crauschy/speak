
Rails.application.routes.draw do


resources :keywords

	get "/sessions/keys", to: "sessions#keys"

  resources :speak
	resources :users
  	get "/signup", to: "users#new"
	get "/login", to: "sessions#new"
	post "/login", to: "sessions#create"
	delete "/logout", to: "sessions#destroy"

	resources :categories do
		resources :keywords
	end

	resources :phrases

	root "categories#index"

end



