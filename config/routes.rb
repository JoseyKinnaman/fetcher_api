Rails.application.routes.draw do
root to: 'names#index'
  resources :names do
    collection do
      get 'random'
    end
  end
end
