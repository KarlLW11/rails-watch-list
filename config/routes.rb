Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :show, :new, :create]  do  #on veut pas de destroy
    resources :bookmarks, only: [:create, :new]
  end
    # inserer bookmark routes pour create et new
  resources :bookmarks, only: [:destroy] #only destroy
  resources :lists, only: [:destroy]
end
