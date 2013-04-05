class Habit < ActiveRecord::Base
  attr_accessible :name, :description, :type, :goal

  validates :name, presence: true

  has_many :counts
  belongs_to :user

end
