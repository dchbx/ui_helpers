Rails.application.routes.draw do
  resources :surveys do
    post 'step', on: :collection
  end
end
