Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources:homes ,:books, only: [:index,:show,:edit] do

  member do
      get 'new'
      post 'create'

  end

    collection do
      get "index"
      get 'search'
    end
  end
  root :to => 'homes#new'

end

