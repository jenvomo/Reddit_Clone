Rails.application.routes.draw do
  resources :users, only: [:create, :new]
  resource :session, only: [:create, :new, :destroy]
  resources :subs, except: :destroy
  resources :posts, except: :index do
    resources :comments, only: :new
  end
  resources :comments, only: [:create,:show]
end
