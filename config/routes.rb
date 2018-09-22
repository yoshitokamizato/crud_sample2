Rails.application.routes.draw do

  # 一覧表示画面へ遷移するためのルーティング
  get '/users', to: 'users#index'

  # 新規登録画面へのルーティング
  get '/users/new', to: 'users#new'

  # 新規登録処理をするためのルーティング
  post '/users', to: 'users#create'

  # 編集画面へのルーティング
  get '/users/:id/edit', to: 'users#edit'

  # 更新処理をするためのルーティング
  patch '/user/:id', to: 'users#update'

  # 削除するためのルーティング
  delete '/users/:id', to: 'users#destroy'
end
