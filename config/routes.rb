SeedTheLearning::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "sessions", :registrations => "registrations" }

  root :to => 'welcome#index'

  match '/create_seed_from_session' => 'seeds#create_from_session', :as => :create_seed_from_session
  match '/create_participant_from_session' => 'participants#create_from_session', :as => :create_participant_from_session

  resources :seeds, :stripe_tokens, :users, :participants
  resources :trees, only: [ :show ]

  namespace :api do
    resource :tree
  end
end
