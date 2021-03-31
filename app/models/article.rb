class Article < ApplicationRecord

  belongs_to :category
  has_many :article_markers
  has_many :upvotes
  has_many :users, through: :upvotes
  has_many :comments
  has_many :creator_articles
  has_many :creators, through: :creator_articles, source: :user
  has_many :reads
  has_many :readers, through: :creator_articles, source: :user
  has_many :upvote_strs
  has_many :str_upvoted_users, through: :upvote_strs, source: :user
  has_many :upvote_dexs
  has_many :dex_upvoted_users, through: :upvote_dexs, source: :user
  has_many :upvote_cons
  has_many :con_upvoted_users, through: :upvote_cons, source: :user
  has_many :upvote_ints
  has_many :int_upvoted_users, through: :upvote_ints, source: :user
  has_many :upvote_wdms
  has_many :wdm_upvoted_users, through: :upvote_wdms, source: :user
  has_many :upvote_chas
  has_many :cha_upvoted_users, through: :upvote_chas, source: :user
  

  validates :title, presence: true
  validates :source, presence: true
  validates :category_id, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 6}

end