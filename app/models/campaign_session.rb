class CampaignSession < ApplicationRecord
  belongs_to :campaign
  has_many :article_markers
end
