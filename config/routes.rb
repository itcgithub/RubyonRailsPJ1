Rails.application.routes.draw do
  resources :reviews, only: [:index, :destroy]
  root 'books#index'
  resources :books do
    resources :reviews, except: [:index, :destroy]
  end
  get 'my_books', to: 'books#my_books'
  devise_for :users
end
