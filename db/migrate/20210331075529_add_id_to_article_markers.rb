class AddIdToArticleMarkers < ActiveRecord::Migration[6.0]
  def change
    add_column :article_markers, :article_id, :integer
    add_column :article_markers, :campaign_session_id, :integer
  end
end
