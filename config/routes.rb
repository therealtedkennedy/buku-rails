Rails.application.routes.draw do
  

  devise_for :users
  resources :dashboard, :events,:artpromo
  root to: "homepage#index"
  #match ':controller(/:action(/:id))',:via => get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
