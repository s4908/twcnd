class UserController < ApplicationController
  before_action :set_user

  def edit
  end

  def show
  end

  def update
    @user.update(user_params)
    if @user.save
      flash.now[:notice] = "成功資料更新"
    else
      flash.now[:error] = "請確認欄位是否填寫正確"
    end
    render :edit

  end

private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:game_name, :game_id, :line_name, :remark)
  end
end
