Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :account do
 end
   resources :tasks

 resources :notes

 post "/done", to: "tasks#done"

end
