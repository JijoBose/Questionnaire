Rails.application.routes.draw do

  resources :surveys do
  	resources :questions do
  		resources :options
  	end
  	member do
  	  	get 'preview'
  	end
  end
  

  get 'surveys/index'

  root 'surveys#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
