Rigli::Application.routes.draw do
  devise_for :users

  resources :rigs
  match ':surl' => 'rigs#redirect'

  root :to => 'rigs#new'

end
