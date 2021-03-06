class Admin::SessionsController < ApplicationController

  def new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user.admin
      redirect_back_or_to admin_path, success: "管理者としてログイン中..."
    else
      flash.now[:danger] = "メアドかパスワードに誤りがあります"
      render :new
    end
  end

  def destroy
    logout
    redirect_to admin_path, success: "ログアウトしました"
  end
end
