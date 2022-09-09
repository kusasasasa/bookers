Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'books/new'
  get 'books/index'
  get 'books/edit'
  get 'books/:id' => 'books#show'

  root :to => 'homes#new'
  resources :books

end

