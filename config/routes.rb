Rails.application.routes.draw do
  # Defines the root path route ("/")
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root "organizations#index"
    end
  
    unauthenticated do
      root "devise/sessions#new", as: :unauthenticated_root
    end
  end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :organizations, except: [:destroy]

end
