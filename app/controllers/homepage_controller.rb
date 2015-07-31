class HomepageController < ApplicationController
  def index
    @users = User.all.info_confirmed
              .includes(:users_units)
              .includes(:monsters)
              .order("updated_at desc")
    @users = @users.name_include(params[:search]) if params[:search]
    @users = @users.page(params[:page])
    @search_param = params[:search]
  end

end
