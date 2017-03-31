Rails.application.routes.draw do
  resources :surveys do
    put 'step', on: :collection
  end
end
