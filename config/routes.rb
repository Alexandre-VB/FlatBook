Rails.application.routes.draw do
  devise_for :users
  root to: 'topics#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :topics do
    resources :answers
  end
end
