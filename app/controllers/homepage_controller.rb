class HomepageController < ApplicationController
  def index
    @users = User.all.includes(:users_units).includes(:monsters)
  end
end
