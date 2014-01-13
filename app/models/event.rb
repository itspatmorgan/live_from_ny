class Event < ActiveRecord::Base
  attr_accessible :name, :url, :description, :borough, :neighborhood, :free

  has_many :users, through: :attendances
  has_many :attendances
end
