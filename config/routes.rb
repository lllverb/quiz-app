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
  resources :users,   only: [:show]
  get    'users/:id/favorite'     => 'users#favorite'
  get    'users/:id/mistake'     => 'users#mistake'
  resources :choices, only: [:index, :post, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
