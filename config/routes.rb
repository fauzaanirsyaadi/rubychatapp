Rails.application.routes.draw do
  resources :rooms do
    resources :chats, only: [:create]
  end
  
  root 'rooms#index'
  
  # Ignore browser extension requests
  match '/hybridaction/*path', to: proc { [404, {}, ['']] }, via: :all
  match '/.well-known/*path', to: proc { [404, {}, ['']] }, via: :all
end
