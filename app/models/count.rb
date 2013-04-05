class Count < ActiveRecord::Base
  attr_accessible :habit_id
  belongs_to :habit
  validates :habit_id, presence: true
end
