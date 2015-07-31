class User < ActiveRecord::Base
  has_many :users_units
  has_many :monsters, through: :users_units
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :game_name, presence: true, on: :update
  validates :game_id, presence: true, on: :update

  scope :info_confirmed, ->{ where(info_completed: true) }
  scope :name_include, ->(name){where("lower(game_name) like ? or lower(line_name) like ?", "%#{name.downcase}%", "%#{name.downcase}%")}

  paginates_per 25
end
