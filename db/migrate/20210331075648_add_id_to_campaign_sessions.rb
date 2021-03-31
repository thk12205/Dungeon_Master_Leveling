class AddIdToCampaignSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :campaign_sessions, :campaign_id, :integer
  end
end
