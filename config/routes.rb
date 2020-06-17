Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' } #로그인 유저가 pw없이 프로필 편집이 가능

  root 'posts#index' #youkoso

  get '/users/:id', to: 'users#show', as: 'user'

  #==========ここから追加する==========
  resources :posts, only: %i(index new create show destroy) do
    resources :photos, only: %i(create)
  resources :likes, only: %i(create destroy)
  resources :comments, only: %i(create destroy)

  end
end
