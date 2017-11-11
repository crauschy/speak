
Rails.application.routes.draw do


	get "/sessions/keys", to: "sessions#keys"
<<<<<<< HEAD
	#sessions_keys
  	resources :speak
=======
  resources :speak
>>>>>>> CF-Keys-or-Bust
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



