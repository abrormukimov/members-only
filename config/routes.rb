Rails.application.routes.draw do
  devise_for :members, :controllers => { registrations: 'registrations'}
  root to: 'posts#index'
  resources :posts, only: [:new, :create, :index]
  resources :members, only: [:index, :edit, :show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
