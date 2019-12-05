Rails.application.routes.draw do
  resources :captures, except: [:new, :update, :edit]
  resources :users, except: [:new, :edit]
  resources :pokemons, except: [:new, :edit]
  resources :login, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
