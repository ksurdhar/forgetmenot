Forgetmenot::Application.routes.draw do
  devise_for :users
  root to: "site#root"

  namespace :api, :defaults => { :format => :json } do
    resources :users, only: [:index, :show]
    resources :relationships, only: [:create, :index, :update, :destroy]
  end

end
