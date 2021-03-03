class User < ApplicationRecord
  has_secure_password
  
  has_many :upvotes
  has_many :articles, through: :upvotes

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
end
