class AddCreatorIdToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :creator_id, :integer
  end
end
