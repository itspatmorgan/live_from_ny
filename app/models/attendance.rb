class Attendance < ActiveRecord::Base
  attr_accessible :user_id, :event_id, :user, :event

  belongs_to :user
  belongs_to :event
end
