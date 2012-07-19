SeedTheLearning::Application.routes.draw do
  devise_for :users

  root :to => 'welcome#index'

  resources :seeds

  namespace :api do
    resource :tree
  end
end
