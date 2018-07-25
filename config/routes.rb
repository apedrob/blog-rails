Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
  	resources :comments
  end

  namespace :api do
    resources :articles do
      resources :comments
    end
  end
  
  
  root 'welcome#index'
end
