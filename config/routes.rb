Rails.application.routes.draw do
  resources :lists, only: %i(index new create show destroy) do
    resources :bookmarks, only: [:create]
  end
  resources :bookmarks, only: [:destroy]
end
