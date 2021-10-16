Rails.application.routes.draw do
  
  #nested routes
  resources :todo_lists do
    resources :todo_items
  end
  root to: "todo_lists#index"  #Route for the Homepage

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
