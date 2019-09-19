Rails.application.routes.draw do
  devise_for :users
  root 'quizzes#index'
  resources :quizzes, only: [:index, :post, :new, :create, :show]
  resources :users,   only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
