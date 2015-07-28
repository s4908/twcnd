class HomepageController < ApplicationController
  def index
    @users = User.all.info_confirmed.includes(:users_units).includes(:monsters)
  end
end
