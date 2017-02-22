Rails.application.routes.draw do
  resources :complaints
  get 'welcome/index'

  devise_for :users

  authenticated :user do
    root 'complaints#index', as: :authenticated_root
  end

  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
