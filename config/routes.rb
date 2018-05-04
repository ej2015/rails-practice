Rails.application.routes.draw do
  resources :properties
  resources :maids
  resources :portals do
		member do
			get "purchase"
		end
	end

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
