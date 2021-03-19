class AddBodyAndVideoToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :body, :text
    add_column :articles, :video, :boolean
  end
end
