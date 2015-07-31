class UserController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!

  def edit
  end

  def show
  end

  def update
    @user.update(user_params)
    @user.info_completed = true
    
    if @user.save
      flash.now[:notice] = "成功資料更新"
      render :show
    else
      flash.now[:error] = "請確認欄位是否填寫正確"
      render :edit
    end
  end


private
  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:game_name, :game_id, :line_name, :remark)
  end
end
