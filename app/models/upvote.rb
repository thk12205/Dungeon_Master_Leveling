class Upvote < ApplicationRecord

  belongs_to :user
  belongs_to :article

  # apparently, having associations automatically implements id validation requirements
  # validates :user_id, presence: true
  # validates :article_id, presence: true

end