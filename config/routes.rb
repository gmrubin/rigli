Rigli::Application.routes.draw do
  devise_for :users

  resources :rigs

  root :to => 'rigs#new'

end
