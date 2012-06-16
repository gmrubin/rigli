Rigli::Application.routes.draw do
  devise_for :users

  root :to => 'rig#new'

end
