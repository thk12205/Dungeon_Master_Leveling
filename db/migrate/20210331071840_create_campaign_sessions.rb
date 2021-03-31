class CreateCampaignSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :campaign_sessions do |t|
      t.datetime :date
      t.string :name

      t.timestamps
    end
  end
end
