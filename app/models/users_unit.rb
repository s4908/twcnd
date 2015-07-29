class UsersUnit < ActiveRecord::Base
  belongs_to :user
  belongs_to :monster

  validates :monster_id, presence: true
  validates :monster_level, presence: true
  validates :monster_id, uniqueness: { scope: :user_id  }

  default_scope { order('monster_level DESC') }

  def image_number
    monster.image_number
  end

end
