class UpvoteCha < ApplicationRecord

  belongs_to :user
  belongs_to :article


  def top_three_articles
    articles.sort_by{|article| article.upvotes.count}.reverse.take(3)
  end

  def weighted_score
    gold = 0
    articles.users.map do |user|
      user_stat = user.cha
      user.upvotes.map do |upvote|
        gold += user_stat
      end
    end
  end

end
