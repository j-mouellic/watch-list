Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only:[:new, :create]
    resources :reviews, only:[:new, :create]
  end
  resources :bookmarks, only: :destroy
end
