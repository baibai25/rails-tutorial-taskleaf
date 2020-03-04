Rails.application.routes.draw do
  root to: 'tasks#index' # top page
  resources :tasks # rooting following all actions (tasks/*)
  #get 'tasks/index'
  #get 'tasks/show'
  #get 'tasks/new'
  #get 'tasks/edit'
end
