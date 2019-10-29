Rails.application.routes.draw do
  devise_for :users
  root 'quizzes#index'
  resources :quizzes, only: [:index, :post, :new, :create, :show] do
    collection do
      get 'inde'
      get 'keshimas'
      get 'judge'
      get 'search'
      post 'modal'
      get 'category_children', defaults: {format:'json'}
    end
    member do
      post 'create_judge'
      post 'update_judge'
      delete 'destroy_judge'
      get 'find_by_parent'
      get 'find_by_children'
    end
    resources :favorites, only: [:create, :destroy]
    resources :mistakes,  only: [:create, :destroy]
  end
  resources :users, only: [:show] do
    collection do
      get 'category_children', defaults: {format:'json'}
    end
    member do
      get 'favorite'
      get 'mistake'
    end
  end
  resources :choices, only: [:index, :post, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
