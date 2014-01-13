class Like < ActiveRecord::Base
    attr_accessible :user_id, :article_id

    belongs_to :user
    belongs_to :article
end
