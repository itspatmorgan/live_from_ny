class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  
  # From devise #
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # Added by developer #
  attr_accessible :username

  has_many :likes
  has_many :articles, through: :likes
  
  has_many :attendances
  has_many :events, through: :attendances 
end
