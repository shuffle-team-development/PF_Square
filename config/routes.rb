Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root :to => 'homes#top'
    get 'search' => 'searches#search'
    resources :users, only: [:index, :show, :edit, :update, :destroy]
    resources :posts, only: [:index, :show, :new, :edit, :create, :update, :destroy] do
      resource :likes, only: [:create, :destroy]
      resources :comments, only: [:index, :create, :destroy]
    end
    resources :genres, only: [:index, :show, :create, :edit, :destroy]
end
