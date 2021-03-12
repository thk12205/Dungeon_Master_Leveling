class Category < ApplicationRecord

  has_many :articles

  def top_three_articles
    articles.sort_by{|article| article.upvotes.count}.reverse.take(3)
  end
end
