class HomepageController < ApplicationController
  def index
    @monsters = Monster.all
  end
end
