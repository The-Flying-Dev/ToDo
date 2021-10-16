Rails.application.routes.draw do
  
  resources :todo_lists
  root to: "todo_lists#index"  #Route for the Homepage
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
