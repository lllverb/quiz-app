Rails.application.routes.draw do
  devise_for :users
  root 'quizzes#index'
  resources :quizzes, only: [:index, :post, :new, :create, :show] do
    collection do
      get 'inde'
      get 'keshimas'
      post 'modal'
    end
    resources :favorites, only: [:create, :destroy]
    resources :mistakes,  only: [:create, :destroy]
  end
  resources :users, only: [:show] do
    member do
      get 'favorite'
      get 'mistake'
    end
  end
  resources :choices, only: [:index, :post, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
