class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # From devise
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # Additional
  attr_accessible :username
  # attr_accessible :title, :body

  has_many :articles, through: :likes
  has_many :likes

  has_many :events, through: :attendances
  has_many :attendances
end
