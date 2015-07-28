class UsersUnit < ActiveRecord::Base
  belongs_to :user
  belongs_to :monster
  validates :monster_level, presence: true

  def image_number
    monster.image_number
  end

end
