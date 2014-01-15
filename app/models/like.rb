class Like < ActiveRecord::Base
  attr_accessible :user_id, :article_id, :user, :article

  belongs_to :user
  belongs_to :article
end
