class Admin::SessionsController < ApplicationController

  def new

  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to admin_login_path, success: "管理者としてログイン中..."
    else
      flash.now[:danger] = "ログインに失敗しました"
    end
  end

  def destroy

  end
end