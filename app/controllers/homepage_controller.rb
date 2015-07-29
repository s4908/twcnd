class HomepageController < ApplicationController
  def index
    @users = User.all.info_confirmed.includes(:users_units).includes(:monsters).order("updated_at desc")
  end
end
