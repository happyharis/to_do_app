Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :files, only: [:destroy, :show, :new, :create] do
  		resources :tasks, :except => [:index] 
	end
end
