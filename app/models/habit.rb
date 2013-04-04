class Habit < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true

  has_many :counts
  belongs_to :user

end
