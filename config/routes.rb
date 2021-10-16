Rails.application.routes.draw do
  
  #nested routes and member routes
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  root to: "todo_lists#index"  #Route for the Homepage

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
