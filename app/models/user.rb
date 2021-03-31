class User < ApplicationRecord
  has_secure_password
  
  has_many :upvotes
  has_many :articles, through: :upvotes
  has_many :campaigns
  has_many :comments
  
  has_many :creator_articles
  has_many :created_articles, through: :creator_articles, source: :article
  has_many :reads
  has_many :read_articles, through: :creator_articles, source: :article
  has_many :upvote_strs
  has_many :str_upvoted_articles, through: :upvote_strs, source: :article
  has_many :upvote_dexs
  has_many :dex_upvoted_articles, through: :upvote_dexs, source: :article
  has_many :upvote_cons
  has_many :con_upvoted_articles, through: :upvote_cons, source: :article
  has_many :upvote_ints
  has_many :int_upvoted_articles, through: :upvote_ints, source: :article
  has_many :upvote_wdms
  has_many :wdm_upvoted_articles, through: :upvote_wdms, source: :article
  has_many :upvote_chas
  has_many :cha_upvoted_articles, through: :upvote_chas, source: :article




  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
end