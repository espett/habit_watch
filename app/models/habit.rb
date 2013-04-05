class Habit < ActiveRecord::Base
  attr_accessible :name, :description, :type_of_habit

  validates :name, presence: true

  has_many :counts
  belongs_to :user

end
