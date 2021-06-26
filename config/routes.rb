Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'projects', to: 'pages#projects'
  get 'contact', to: 'pages#contact'
  resources :users, only: [:show, :update, :edit]
  resources :projects
  resources :stacks, only: [:index]
end
