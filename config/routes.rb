Forgetmenot::Application.routes.draw do
  root to: "site#root"

  namespace :api, :defaults => { :format => :json } do
    resource :session, only: [:new, :create, :destroy]
    resources :users, only: [:index, :show, :new, :create]
    resources :relationships, only: [:create, :index, :update, :destroy]
  end

end
