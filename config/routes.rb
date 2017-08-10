Rails.application.routes.draw do
  resources :tasks, except: :show
end
