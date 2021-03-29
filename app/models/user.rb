class User < ApplicationRecord
  has_secure_password
  
  has_many :upvotes
  has_many :articles, through: :upvotes
  has_many :comments
  # has_many :articles, through: :creatorarticles
  has_many :created_articles, through: :creator_article, source: :article


  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
end