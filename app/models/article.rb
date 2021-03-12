class Article < ApplicationRecord

  belongs_to :category
  has_many :upvotes
  has_many :users, through: :upvotes


end
