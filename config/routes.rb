Rails.application.routes.draw do
  
  resources :employees
  
  resources :salons do
    resources :services
    resources :bookings
    collection do
      get :search
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
