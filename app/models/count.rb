class Count < ActiveRecord::Base
  attr_accessible :time

  belongs_to :habit
end
