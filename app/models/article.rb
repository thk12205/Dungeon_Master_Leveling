class Article < ApplicationRecord

  belongs_to :category
  has_many :upvotes
  has_many :users, through: :upvotes

  validates :title, presence: true
  validates :source, presence: true
  validates :category_id, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 6}
  validates :video, presence: true

end
