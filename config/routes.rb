
Rails.application.routes.draw do


  resources :speak
	resources :users
	get "/login", to: "sessions#new"
	post "/login", to: "sessions#create"
	delete "/logout", to: "sessions#destroy"

	resources :categories do
		resources :keywords
	end

	root "categories#index"

end



