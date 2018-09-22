class UsersController < ApplicationController

  # 一覧表示するためのデータを取得するアクション
  def index
    @users = User.all
  end

  # 新規登録画面を表示するためのアクション
  def new
    @user = User.new
  end

  # データをデータベースへ登録するための処理
  def create
    User.create(user_params)
  end

  # データ編集画面を表示するためのアクション
  def edit
    @user = User.find(params[:id])
  end

  # データを更新するための処理
  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  # データを削除するための処理
  def destroy
    user = User.find(params[:id])
    user.delete
  end

  private

  def user_params
    # Strong Parameter
    params.require(:user).permit(:name, :age)
  end

end
