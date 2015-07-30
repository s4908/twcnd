class UsersUnitsController < ApplicationController

  def new
    @unit = current_user.users_units.new
  end

  def edit
    @unit = current_user.users_units.where(id: params[:id])
  end

  def create
    @unit = current_user.users_units.new(users_unit_params)
    if @unit.save
      current_user.touch
      flash[:notice] = "新增寵物成功！"
      redirect_to user_path
    else
      flash[:error] = "新增寵物失敗！請確認。"
      render :new
    end
    
  end

  def destroy
    @unit = current_user.users_units.find(params[:id]).destroy
    flash[:notice] = "寵物已刪除！"
    redirect_to user_path 
  end

  def update
    @unit = current_user.users_units.find(params[:id])
    @unit.monster_level = params[:users_unit][:monster_level]
    if @unit.save!
      flash[:notice] = "更新成功！"
      redirect_to user_path
    else
      flash[:error] = "更新失敗！"
      redirect_to user_path
    end
  end


private
  def users_unit_params
    params.require(:users_unit).permit(:monster_id, :monster_level)
  end


end
