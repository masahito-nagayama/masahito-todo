Rails.application.routes.draw do
  root 'tasks#index'

  get 'tasks#show', to: 'tasks/show'
  get 'tasks#new', to: 'tasks/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
