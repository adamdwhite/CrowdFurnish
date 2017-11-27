Rails.application.routes.draw do
  resources :categories
  resources :user_rewards
  resources :user_projects
  resources :project_categories
  resources :rewards
  resources :payments
  resources :projects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
