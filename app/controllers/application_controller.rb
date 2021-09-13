class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :danger, :warning

  protected

  def not_authenticated
    redirect_to login_url, danger: '管理者権限がありません'
  end
end
