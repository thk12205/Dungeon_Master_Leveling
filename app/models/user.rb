class User < ApplicationRecord
  has_secure_password
  
  has_many :upvotes
  has_many :articles, through: :upvotes
  has_many :comments
  has_many :creator_articles
  has_many :created_articles, through: :creator_articles, source: :article
  has_many :reads
  has_many :read_articles, through: :creator_articles, source: :article
  has_many :upvote_strs
  has_many :str_upvoted_articles, through: :upvote_strs, source: :article


  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
end