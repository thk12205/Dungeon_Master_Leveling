class ArticleMarker < ApplicationRecord
  belongs_to :campaign_session
  belongs_to :article
end
